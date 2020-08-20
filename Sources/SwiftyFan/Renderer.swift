//
//  Renderer.swift
//  SwiftyFan
//
//  Created by Serhii Mumriak on 16.08.2020.
//

import Foundation
import AppKid
import Volcano
import TinyFoundation
import CVulkan

public enum RendererError: Error {
    case noDiscreteGPU
}

public final class Renderer {
    let window: AppKid.Window

    internal fileprivate(set) var instance: Instance
    internal fileprivate(set) var physicalDevice: PhysicalDevice
    internal fileprivate(set) var surface: Surface
    internal fileprivate(set) var device: Device
    internal fileprivate(set) var preesentationQueue: Queue
    internal fileprivate(set) var graphicsQueue: Queue
    internal fileprivate(set) var commandPool: CommandPool

    internal fileprivate(set) var imageAvailableSemaphore: Semaphore
    internal fileprivate(set) var renderFinishedSemaphore: Semaphore

    var vertexShader: Shader
    var fragmentShader: Shader

    var oldSwapchain: Swapchain?
    var swapchain: Swapchain!
    var images: [Image]!
    var imageViews: [ImageView]!

    var pipelineLayout: SmartPointer<VkPipelineLayout_T>!
    var renderPass: SmartPointer<VkRenderPass_T>!
    var pipeline: SmartPointer<VkPipeline_T>!
    var framebuffers: [SmartPointer<VkFramebuffer_T>] = []
    var commandBuffers: [CommandBuffer] = []

    deinit {
        try? clearSwapchain()
        oldSwapchain = nil
    }

    public init(window: AppKid.Window) throws {
        self.window = window

        instance = Instance()
        guard let physicalDevice = instance.discreteGPUDevice else {
            throw RendererError.noDiscreteGPU
        }

        self.physicalDevice = physicalDevice

        surface = try physicalDevice.createXlibSurface(display: window.nativeWindow.display, window:  window.nativeWindow.windowID)
        device = try Device(surface: surface)

        preesentationQueue = try Queue(device: device, familyIndex: device.presentationQueueFamilyIndex, queueIndex: 0)
        graphicsQueue = try Queue(device: device, familyIndex: device.graphicsQueueFamilyIndex, queueIndex: 0)

        commandPool = try CommandPool(device: device, queue: graphicsQueue)

        imageAvailableSemaphore = try Semaphore(device: device)
        renderFinishedSemaphore = try Semaphore(device: device)

        #if os(Linux)
        let bundle = Bundle.module
        #else
        let bundle = Bundle.main
        #endif

        vertexShader = try device.shader(named: "TriangleVertexShader", in: bundle)
        fragmentShader = try device.shader(named: "TriangleFragmentShader", in: bundle)
    }

    public func setupSwapchain() throws {
        try surface.refreshCapabilities()

        let windowSize = window.bounds.size
        let displayScale = window.nativeWindow.displayScale
        let desiredSize = VkExtent2D(width: UInt32(windowSize.width * displayScale), height: UInt32(windowSize.height * displayScale))
        let minSize = surface.capabilities.minImageExtent
        let maxSize = surface.capabilities.maxImageExtent

//        debugPrint("Win: \(windowSize.width * 2.0), \(windowSize.height * 2.0). Min: \(minSize.width), \(minSize.height). Max: \(maxSize.width), \(maxSize.height)")

        let width = max(min(desiredSize.width, maxSize.width), minSize.width)
        let height = max(min(desiredSize.height, maxSize.height), minSize.height)
        let size = VkExtent2D(width: width, height: height)

        swapchain = try Swapchain(device: device, surface: surface, size: size, usage: .colorAttachment, compositeAlpha: .opaque, oldSwapchain: oldSwapchain)
        images = try swapchain.getImages()
        imageViews = try images.map { try ImageView(image: $0) }

        var pipelineLayoutInfo = VkPipelineLayoutCreateInfo()
        pipelineLayoutInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
        pipelineLayoutInfo.setLayoutCount = 0
        pipelineLayoutInfo.pSetLayouts = nil
        pipelineLayoutInfo.pushConstantRangeCount = 0
        pipelineLayoutInfo.pPushConstantRanges = nil

        pipelineLayout = try device.create(with: pipelineLayoutInfo)
        renderPass = try createRenderPass()
        pipeline = try createGraphicsPipeline()
        framebuffers = try createFramebuffers()
        commandBuffers = try createCommandBuffers()
    }

    public func clearSwapchain() throws {
        try device.waitForIdle()

        oldSwapchain = swapchain

        commandBuffers = []
        framebuffers = []
        pipeline = nil
        renderPass = nil
        pipelineLayout = nil
        imageViews = nil
        images = nil
        swapchain = nil
    }

    public func beginFrame() {

    }

    public func endFrame() {
        
    }

    public func render() throws {
        let imageIndex = try swapchain.getNextImageIndex(semaphore: imageAvailableSemaphore)

        let commandBuffer = commandBuffers[imageIndex]

        let submitCommandBuffers: [CommandBuffer] = [commandBuffer]
        let waitSemaphores: [Semaphore] = [imageAvailableSemaphore]
        let signalSemaphores: [Semaphore] = [renderFinishedSemaphore]
        let waitStages: [VkPipelineStageFlags] = [VkPipelineStageFlagBits.colorAttachmentOutput.rawValue]

        try graphicsQueue.submit(commandBuffers: submitCommandBuffers, waitSemaphores: waitSemaphores, signalSemaphores: signalSemaphores, waitStages: waitStages)
        try preesentationQueue.present(swapchains: [swapchain], waitSemaphores: signalSemaphores, imageIndices: [CUnsignedInt(imageIndex)])

        try device.waitForIdle()
    }

    func createRenderPass() throws -> SmartPointer<VkRenderPass_T> {
        var colorAttachment = VkAttachmentDescription()
        colorAttachment.format = swapchain.imageFormat
        colorAttachment.samples = .one
        colorAttachment.loadOp = .clear
        colorAttachment.storeOp = .store
        colorAttachment.stencilLoadOp = .clear
        colorAttachment.stencilStoreOp = .store
        colorAttachment.initialLayout = .undefined
        colorAttachment.finalLayout = .presentSource

        var colorAttachmentRef = VkAttachmentReference()
        colorAttachmentRef.attachment = 0
        colorAttachmentRef.layout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL

        var subpass = VkSubpassDescription()
        subpass.pipelineBindPoint = VK_PIPELINE_BIND_POINT_GRAPHICS
        subpass.colorAttachmentCount = 1
        withUnsafePointer(to: &colorAttachmentRef) {
            subpass.pColorAttachments = $0
        }

        var renderPassInfo = VkRenderPassCreateInfo()
        renderPassInfo.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
        renderPassInfo.attachmentCount = 1
        withUnsafePointer(to: &colorAttachment) {
            renderPassInfo.pAttachments = $0
        }
        renderPassInfo.subpassCount = 1
        withUnsafePointer(to: &subpass) {
            renderPassInfo.pSubpasses = $0
        }
        var dependency = VkSubpassDependency()
        dependency.srcSubpass = VK_SUBPASS_EXTERNAL
        dependency.dstSubpass = 0
        dependency.srcStageMask = VkPipelineStageFlagBits.colorAttachmentOutput.rawValue
        dependency.srcAccessMask = 0
        dependency.dstStageMask = VkPipelineStageFlagBits.colorAttachmentOutput.rawValue
        dependency.dstAccessMask = VkAccessFlagBits.colorAttachmentWrite.rawValue
        let dependencies: [VkSubpassDependency] = [dependency]
        dependencies.withUnsafeBufferPointer { dependenciesPointer in
            renderPassInfo.dependencyCount = CUnsignedInt(dependenciesPointer.count)
            renderPassInfo.pDependencies = dependenciesPointer.baseAddress!
        }

        return try device.create(with: renderPassInfo)
    }

    func createGraphicsPipeline() throws -> SmartPointer<VkPipeline_T> {
        var viewportState = VkPipelineViewportStateCreateInfo()
        viewportState.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
        viewportState.pNext = nil
        viewportState.flags = VkPipelineViewportStateCreateFlags()

        var viewport = VkViewport()
        viewport.x = 0.0
        viewport.y = 0.0
        viewport.width = Float(swapchain.size.width)
        viewport.height = Float(swapchain.size.height)
        viewport.minDepth = 0.0
        viewport.maxDepth = 1.0

        withUnsafePointer(to: &viewport) {
            viewportState.viewportCount = 1
            viewportState.pViewports = $0
        }

        var scissor = VkRect2D()
        scissor.offset = VkOffset2D(x: 0, y: 0)
        scissor.extent = swapchain.size

        withUnsafePointer(to: &scissor) {
            viewportState.scissorCount = 1
            viewportState.pScissors = $0
        }

        var vertexInputInfo = VkPipelineVertexInputStateCreateInfo()
        vertexInputInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
        vertexInputInfo.vertexBindingDescriptionCount = 0
        vertexInputInfo.pVertexBindingDescriptions = nil
        vertexInputInfo.vertexAttributeDescriptionCount = 0
        vertexInputInfo.pVertexAttributeDescriptions = nil

        var inputAssembly = VkPipelineInputAssemblyStateCreateInfo()
        inputAssembly.sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
        inputAssembly.topology = VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
        inputAssembly.primitiveRestartEnable = false.vkBool

        var rasterizer = VkPipelineRasterizationStateCreateInfo()
        rasterizer.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
        rasterizer.depthClampEnable = false.vkBool
        rasterizer.rasterizerDiscardEnable = false.vkBool
        rasterizer.polygonMode = VK_POLYGON_MODE_FILL
        rasterizer.lineWidth = 1.0
        rasterizer.cullMode = VkCullModeFlagBits.back.rawValue
        rasterizer.frontFace = VK_FRONT_FACE_CLOCKWISE
        rasterizer.depthBiasEnable = false.vkBool
        rasterizer.depthBiasConstantFactor = 0.0
        rasterizer.depthBiasClamp = 0.0
        rasterizer.depthBiasSlopeFactor = 0.0

        var multisampling = VkPipelineMultisampleStateCreateInfo()
        multisampling.sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
        multisampling.sampleShadingEnable = false.vkBool
        multisampling.rasterizationSamples = VkSampleCountFlagBits.VK_SAMPLE_COUNT_1_BIT
        multisampling.minSampleShading = 1.0
        multisampling.pSampleMask = nil
        multisampling.alphaToCoverageEnable = false.vkBool
        multisampling.alphaToOneEnable = false.vkBool

        var colorBlendAttachment = VkPipelineColorBlendAttachmentState()
        colorBlendAttachment.colorWriteMask = VkColorComponentFlagBits.rgba.rawValue
        colorBlendAttachment.blendEnable = false.vkBool
        colorBlendAttachment.srcColorBlendFactor = VK_BLEND_FACTOR_ONE
        colorBlendAttachment.dstColorBlendFactor = VK_BLEND_FACTOR_ZERO
        colorBlendAttachment.colorBlendOp = VK_BLEND_OP_ADD
        colorBlendAttachment.srcAlphaBlendFactor = VK_BLEND_FACTOR_ONE
        colorBlendAttachment.dstAlphaBlendFactor = VK_BLEND_FACTOR_ZERO
        colorBlendAttachment.alphaBlendOp = VK_BLEND_OP_ADD

        var colorBlending = VkPipelineColorBlendStateCreateInfo()
        colorBlending.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
        colorBlending.logicOpEnable = false.vkBool
        colorBlending.logicOp = VK_LOGIC_OP_COPY
        withUnsafePointer(to: &colorBlendAttachment) {
            colorBlending.attachmentCount = 1
            colorBlending.pAttachments = $0
        }
        colorBlending.blendConstants = (0.0, 0.0, 0.0, 0.0)

        //            let dynamicStates: [VkDynamicState] = [
        //                VK_DYNAMIC_STATE_VIEWPORT,
        //                VK_DYNAMIC_STATE_LINE_WIDTH
        //            ]
        //
        //            var dynamicState: VkPipelineDynamicStateCreateInfo = dynamicStates.withUnsafeBufferPointer {
        //                return VkPipelineDynamicStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
        //                                                        pNext: nil,
        //                                                        flags: VkPipelineDynamicStateCreateFlags(),
        //                                                        dynamicStateCount: CUnsignedInt($0.count),
        //                                                        pDynamicStates: $0.baseAddress!)
        //            }

        let fragmentShaderStageInfo = fragmentShader.createStageInfo(for: .fragment)
        let vertexShaderStageInfo = vertexShader.createStageInfo(for: .vertex)

        let shaderStages = [vertexShaderStageInfo, fragmentShaderStageInfo]

        var pipelineInfo = VkGraphicsPipelineCreateInfo()
        pipelineInfo.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
        pipelineInfo.stageCount = 2
        shaderStages.withUnsafeBufferPointer {
            pipelineInfo.pStages = $0.baseAddress!
        }

        withUnsafePointer(to: &vertexInputInfo) {
            pipelineInfo.pVertexInputState = $0
        }
        withUnsafePointer(to: &inputAssembly) {
            pipelineInfo.pInputAssemblyState = $0
        }
        withUnsafePointer(to: &viewportState) {
            pipelineInfo.pViewportState = $0
        }
        withUnsafePointer(to: &rasterizer) {
            pipelineInfo.pRasterizationState = $0
        }
        withUnsafePointer(to: &multisampling) {
            pipelineInfo.pMultisampleState = $0
        }
        withUnsafePointer(to: &colorBlending) {
            pipelineInfo.pColorBlendState = $0
        }
        //            withUnsafePointer(to: &dynamicState) {
        //                pipelineInfo.pDynamicState = $0
        //            }
        pipelineInfo.layout = pipelineLayout.pointer
        pipelineInfo.renderPass = renderPass.pointer
        pipelineInfo.subpass = 0

        pipelineInfo.basePipelineHandle = nil
        pipelineInfo.basePipelineIndex = -1

        pipelineInfo.pDepthStencilState = nil

        var pipelinePointer: UnsafeMutablePointer<VkPipeline_T>?
        try vulkanInvoke {
            vkCreateGraphicsPipelines(device.handle, nil, 1, &pipelineInfo, nil, &pipelinePointer)
        }
        let pipeline = SmartPointer(with: pipelinePointer!) { [unowned self] in
            vkDestroyPipeline(device.handle, $0, nil)
        }

        return pipeline
    }

    func createFramebuffers() throws -> [SmartPointer<VkFramebuffer_T>] {
        let result: [SmartPointer<VkFramebuffer_T>] = try imageViews.map { imageView in
            let attachments: [VkImageView?] = [imageView.handle]

            return try attachments.withUnsafeBufferPointer { attachmentsPointer in
                var framebufferInfo = VkFramebufferCreateInfo()
                framebufferInfo.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
                framebufferInfo.renderPass = renderPass.pointer
                framebufferInfo.attachmentCount = 1
                framebufferInfo.pAttachments = attachmentsPointer.baseAddress!
                framebufferInfo.width = swapchain.size.width
                framebufferInfo.height = swapchain.size.height
                framebufferInfo.layers = 1

                return try device.create(with: framebufferInfo)
            }
        }

        return result
    }

    func createCommandBuffers() throws -> [CommandBuffer] {
        let result: [CommandBuffer] = try framebuffers.map { framebuffer in
            let commandBuffer = try CommandBuffer(commandPool: commandPool)

            try commandBuffer.begin()

            var clearColor = VkClearValue(color: VkClearColorValue(float32: (1.0, 1.0, 1.0, 1.0)))

            var renderPassBeginInfo = VkRenderPassBeginInfo()
            renderPassBeginInfo.sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
            renderPassBeginInfo.renderPass = renderPass.pointer
            renderPassBeginInfo.framebuffer = framebuffer.pointer
            renderPassBeginInfo.renderArea.offset = VkOffset2D(x: 0, y: 0)
            renderPassBeginInfo.renderArea.extent = swapchain.size
            withUnsafePointer(to: &clearColor) {
                renderPassBeginInfo.clearValueCount = 1
                renderPassBeginInfo.pClearValues = $0
            }

            try vulkanInvoke {
                vkCmdBeginRenderPass(commandBuffer.handle, &renderPassBeginInfo, VK_SUBPASS_CONTENTS_INLINE)
            }

            try commandBuffer.bind(pipeline: pipeline)

            try vulkanInvoke {
                vkCmdDraw(commandBuffer.handle, 3, 1, 0, 0)
            }

            try vulkanInvoke {
                vkCmdEndRenderPass(commandBuffer.handle)
            }

            try commandBuffer.end()

            return commandBuffer
        }

        return result
    }
}
