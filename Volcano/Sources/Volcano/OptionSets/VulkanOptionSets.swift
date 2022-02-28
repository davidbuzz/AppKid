//
//  VulkanOptionSets.swift
//  Volcano
//
//  Created by Serhii Mumriak on 28.01.2021.
//

import TinyFoundation
import CVulkan

public typealias VkAccelerationStructureCreateFlagBitsKHR = CVulkan.VkAccelerationStructureCreateFlagBitsKHR

public extension VkAccelerationStructureCreateFlagBitsKHR {
    static let deviceAddressCaptureReplay: VkAccelerationStructureCreateFlagBitsKHR = .VK_ACCELERATION_STRUCTURE_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR
    static let motionNv: VkAccelerationStructureCreateFlagBitsKHR = .VK_ACCELERATION_STRUCTURE_CREATE_MOTION_BIT_NV
}

public typealias VkAccessFlagBits = CVulkan.VkAccessFlagBits

public extension VkAccessFlagBits {
    static let indirectCommandRead: VkAccessFlagBits = .VK_ACCESS_INDIRECT_COMMAND_READ_BIT
    static let indexRead: VkAccessFlagBits = .VK_ACCESS_INDEX_READ_BIT
    static let vertexAttributeRead: VkAccessFlagBits = .VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT
    static let uniformRead: VkAccessFlagBits = .VK_ACCESS_UNIFORM_READ_BIT
    static let inputAttachmentRead: VkAccessFlagBits = .VK_ACCESS_INPUT_ATTACHMENT_READ_BIT
    static let shaderRead: VkAccessFlagBits = .VK_ACCESS_SHADER_READ_BIT
    static let shaderWrite: VkAccessFlagBits = .VK_ACCESS_SHADER_WRITE_BIT
    static let colorAttachmentRead: VkAccessFlagBits = .VK_ACCESS_COLOR_ATTACHMENT_READ_BIT
    static let colorAttachmentWrite: VkAccessFlagBits = .VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
    static let depthStencilAttachmentRead: VkAccessFlagBits = .VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT
    static let depthStencilAttachmentWrite: VkAccessFlagBits = .VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
    static let transferRead: VkAccessFlagBits = .VK_ACCESS_TRANSFER_READ_BIT
    static let transferWrite: VkAccessFlagBits = .VK_ACCESS_TRANSFER_WRITE_BIT
    static let hostRead: VkAccessFlagBits = .VK_ACCESS_HOST_READ_BIT
    static let hostWrite: VkAccessFlagBits = .VK_ACCESS_HOST_WRITE_BIT
    static let memoryRead: VkAccessFlagBits = .VK_ACCESS_MEMORY_READ_BIT
    static let memoryWrite: VkAccessFlagBits = .VK_ACCESS_MEMORY_WRITE_BIT
    static let transformFeedbackWriteExt: VkAccessFlagBits = .VK_ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT
    static let transformFeedbackCounterReadExt: VkAccessFlagBits = .VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT
    static let transformFeedbackCounterWriteExt: VkAccessFlagBits = .VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT
    static let conditionalRenderingReadExt: VkAccessFlagBits = .VK_ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT
    static let colorAttachmentReadNoncoherentExt: VkAccessFlagBits = .VK_ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT
    static let accelerationStructureReadKhr: VkAccessFlagBits = .VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR
    static let accelerationStructureWriteKhr: VkAccessFlagBits = .VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR
    static let shadingRateImageReadNv: VkAccessFlagBits = .VK_ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV
    static let accelerationStructureReadNv: VkAccessFlagBits = .VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV
    static let accelerationStructureWriteNv: VkAccessFlagBits = .VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV
    static let fragmentDensityMapReadExt: VkAccessFlagBits = .VK_ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT
    static let fragmentShadingRateAttachmentReadKhr: VkAccessFlagBits = .VK_ACCESS_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR
    static let commandPreprocessReadNv: VkAccessFlagBits = .VK_ACCESS_COMMAND_PREPROCESS_READ_BIT_NV
    static let commandPreprocessWriteNv: VkAccessFlagBits = .VK_ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV
}

public typealias VkAttachmentDescriptionFlagBits = CVulkan.VkAttachmentDescriptionFlagBits

public extension VkAttachmentDescriptionFlagBits {
    static let mayAlias: VkAttachmentDescriptionFlagBits = .VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT
}

public typealias VkBufferCreateFlagBits = CVulkan.VkBufferCreateFlagBits

public extension VkBufferCreateFlagBits {
    static let sparseBinding: VkBufferCreateFlagBits = .VK_BUFFER_CREATE_SPARSE_BINDING_BIT
    static let sparseResidency: VkBufferCreateFlagBits = .VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT
    static let sparseAliased: VkBufferCreateFlagBits = .VK_BUFFER_CREATE_SPARSE_ALIASED_BIT
    static let protected: VkBufferCreateFlagBits = .VK_BUFFER_CREATE_PROTECTED_BIT
    static let deviceAddressCaptureReplay: VkBufferCreateFlagBits = .VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT
    static let deviceAddressCaptureReplayExt: VkBufferCreateFlagBits = .VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT
    static let deviceAddressCaptureReplayKhr: VkBufferCreateFlagBits = .VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR
}

public typealias VkBufferUsageFlagBits = CVulkan.VkBufferUsageFlagBits

public extension VkBufferUsageFlagBits {
    static let transferSource: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_TRANSFER_SRC_BIT
    static let transferDestination: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_TRANSFER_DST_BIT
    static let uniformTexelBuffer: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT
    static let storageTexelBuffer: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT
    static let uniformBuffer: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT
    static let storageBuffer: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
    static let indexBuffer: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_INDEX_BUFFER_BIT
    static let vertexBuffer: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
    static let indirectBuffer: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT
    static let shaderDeviceAddress: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT
    static let transformFeedbackBufferExt: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT
    static let transformFeedbackCounterBufferExt: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT
    static let conditionalRenderingExt: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT
    static let accelerationStructureBuildInputReadOnlyKhr: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR
    static let accelerationStructureStorageKhr: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR
    static let shaderBindingTableKhr: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_SHADER_BINDING_TABLE_BIT_KHR
    static let rayTracingNv: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_RAY_TRACING_BIT_NV
    static let shaderDeviceAddressExt: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT
    static let shaderDeviceAddressKhr: VkBufferUsageFlagBits = .VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR
}

public typealias VkBuildAccelerationStructureFlagBitsKHR = CVulkan.VkBuildAccelerationStructureFlagBitsKHR

public extension VkBuildAccelerationStructureFlagBitsKHR {
    static let allowUpdate: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR
    static let allowCompaction: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR
    static let preferFastTrace: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR
    static let preferFastBuild: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR
    static let lowMemory: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR
    static let allowUpdateNv: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_NV
    static let allowCompactionNv: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_NV
    static let preferFastTraceNv: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_NV
    static let preferFastBuildNv: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_NV
    static let lowMemoryNv: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_NV
    static let motionNv: VkBuildAccelerationStructureFlagBitsKHR = .VK_BUILD_ACCELERATION_STRUCTURE_MOTION_BIT_NV
}

public typealias VkColorComponentFlagBits = CVulkan.VkColorComponentFlagBits

public extension VkColorComponentFlagBits {
    static let r: VkColorComponentFlagBits = .VK_COLOR_COMPONENT_R_BIT
    static let g: VkColorComponentFlagBits = .VK_COLOR_COMPONENT_G_BIT
    static let b: VkColorComponentFlagBits = .VK_COLOR_COMPONENT_B_BIT
    static let a: VkColorComponentFlagBits = .VK_COLOR_COMPONENT_A_BIT
}

public typealias VkCommandBufferResetFlagBits = CVulkan.VkCommandBufferResetFlagBits

public extension VkCommandBufferResetFlagBits {
    static let releaseResources: VkCommandBufferResetFlagBits = .VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT
}

public typealias VkCommandBufferUsageFlagBits = CVulkan.VkCommandBufferUsageFlagBits

public extension VkCommandBufferUsageFlagBits {
    static let oneTimeSubmit: VkCommandBufferUsageFlagBits = .VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    static let renderPassContinue: VkCommandBufferUsageFlagBits = .VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT
    static let simultaneousUse: VkCommandBufferUsageFlagBits = .VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT
}

public typealias VkCommandPoolCreateFlagBits = CVulkan.VkCommandPoolCreateFlagBits

public extension VkCommandPoolCreateFlagBits {
    static let transient: VkCommandPoolCreateFlagBits = .VK_COMMAND_POOL_CREATE_TRANSIENT_BIT
    static let resetCommandBuffer: VkCommandPoolCreateFlagBits = .VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT
    static let protected: VkCommandPoolCreateFlagBits = .VK_COMMAND_POOL_CREATE_PROTECTED_BIT
}

public typealias VkCommandPoolResetFlagBits = CVulkan.VkCommandPoolResetFlagBits

public extension VkCommandPoolResetFlagBits {
    static let releaseResources: VkCommandPoolResetFlagBits = .VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT
}

public typealias VkCompositeAlphaFlagBitsKHR = CVulkan.VkCompositeAlphaFlagBitsKHR

public extension VkCompositeAlphaFlagBitsKHR {
    static let opaque: VkCompositeAlphaFlagBitsKHR = .VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
    static let preMultiplied: VkCompositeAlphaFlagBitsKHR = .VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR
    static let postMultiplied: VkCompositeAlphaFlagBitsKHR = .VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR
    static let inherit: VkCompositeAlphaFlagBitsKHR = .VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR
}

public typealias VkConditionalRenderingFlagBitsEXT = CVulkan.VkConditionalRenderingFlagBitsEXT

public extension VkConditionalRenderingFlagBitsEXT {
    static let inverted: VkConditionalRenderingFlagBitsEXT = .VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT
}

public typealias VkCullModeFlagBits = CVulkan.VkCullModeFlagBits

public extension VkCullModeFlagBits {
    static let front: VkCullModeFlagBits = .VK_CULL_MODE_FRONT_BIT
    static let back: VkCullModeFlagBits = .VK_CULL_MODE_BACK_BIT
    static let frontAndBack: VkCullModeFlagBits = .VK_CULL_MODE_FRONT_AND_BACK
}

public typealias VkDebugReportFlagBitsEXT = CVulkan.VkDebugReportFlagBitsEXT

public extension VkDebugReportFlagBitsEXT {
    static let information: VkDebugReportFlagBitsEXT = .VK_DEBUG_REPORT_INFORMATION_BIT_EXT
    static let warning: VkDebugReportFlagBitsEXT = .VK_DEBUG_REPORT_WARNING_BIT_EXT
    static let performanceWarning: VkDebugReportFlagBitsEXT = .VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT
    static let error: VkDebugReportFlagBitsEXT = .VK_DEBUG_REPORT_ERROR_BIT_EXT
    static let debug: VkDebugReportFlagBitsEXT = .VK_DEBUG_REPORT_DEBUG_BIT_EXT
}

public typealias VkDebugUtilsMessageSeverityFlagBitsEXT = CVulkan.VkDebugUtilsMessageSeverityFlagBitsEXT

public extension VkDebugUtilsMessageSeverityFlagBitsEXT {
    static let verbose: VkDebugUtilsMessageSeverityFlagBitsEXT = .VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT
    static let info: VkDebugUtilsMessageSeverityFlagBitsEXT = .VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT
    static let warning: VkDebugUtilsMessageSeverityFlagBitsEXT = .VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT
    static let error: VkDebugUtilsMessageSeverityFlagBitsEXT = .VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT
}

public typealias VkDebugUtilsMessageTypeFlagBitsEXT = CVulkan.VkDebugUtilsMessageTypeFlagBitsEXT

public extension VkDebugUtilsMessageTypeFlagBitsEXT {
    static let general: VkDebugUtilsMessageTypeFlagBitsEXT = .VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT
    static let validation: VkDebugUtilsMessageTypeFlagBitsEXT = .VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT
    static let performance: VkDebugUtilsMessageTypeFlagBitsEXT = .VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT
}

public typealias VkDependencyFlagBits = CVulkan.VkDependencyFlagBits

public extension VkDependencyFlagBits {
    static let byRegion: VkDependencyFlagBits = .VK_DEPENDENCY_BY_REGION_BIT
    static let deviceGroup: VkDependencyFlagBits = .VK_DEPENDENCY_DEVICE_GROUP_BIT
    static let viewLocal: VkDependencyFlagBits = .VK_DEPENDENCY_VIEW_LOCAL_BIT
    static let viewLocalKhr: VkDependencyFlagBits = .VK_DEPENDENCY_VIEW_LOCAL_BIT_KHR
    static let deviceGroupKhr: VkDependencyFlagBits = .VK_DEPENDENCY_DEVICE_GROUP_BIT_KHR
}

public typealias VkDescriptorBindingFlagBits = CVulkan.VkDescriptorBindingFlagBits

public extension VkDescriptorBindingFlagBits {
    static let updateAfterBind: VkDescriptorBindingFlagBits = .VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT
    static let updateUnusedWhilePending: VkDescriptorBindingFlagBits = .VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT
    static let partiallyBound: VkDescriptorBindingFlagBits = .VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT
    static let variableDescriptorCount: VkDescriptorBindingFlagBits = .VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT
    static let updateAfterBindExt: VkDescriptorBindingFlagBits = .VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT
    static let updateUnusedWhilePendingExt: VkDescriptorBindingFlagBits = .VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT_EXT
    static let partiallyBoundExt: VkDescriptorBindingFlagBits = .VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT
    static let variableDescriptorCountExt: VkDescriptorBindingFlagBits = .VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT
}

public typealias VkDescriptorPoolCreateFlagBits = CVulkan.VkDescriptorPoolCreateFlagBits

public extension VkDescriptorPoolCreateFlagBits {
    static let freeDescriptorSet: VkDescriptorPoolCreateFlagBits = .VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT
    static let updateAfterBind: VkDescriptorPoolCreateFlagBits = .VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT
    static let updateAfterBindExt: VkDescriptorPoolCreateFlagBits = .VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT
    static let hostOnlyValve: VkDescriptorPoolCreateFlagBits = .VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_VALVE
}

public typealias VkDescriptorSetLayoutCreateFlagBits = CVulkan.VkDescriptorSetLayoutCreateFlagBits

public extension VkDescriptorSetLayoutCreateFlagBits {
    static let updateAfterBindPool: VkDescriptorSetLayoutCreateFlagBits = .VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT
    static let pushDescriptorKhr: VkDescriptorSetLayoutCreateFlagBits = .VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR
    static let updateAfterBindPoolExt: VkDescriptorSetLayoutCreateFlagBits = .VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT
    static let hostOnlyPoolValve: VkDescriptorSetLayoutCreateFlagBits = .VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_VALVE
}

public typealias VkDeviceDiagnosticsConfigFlagBitsNV = CVulkan.VkDeviceDiagnosticsConfigFlagBitsNV

public extension VkDeviceDiagnosticsConfigFlagBitsNV {
    static let enableShaderDebugInfo: VkDeviceDiagnosticsConfigFlagBitsNV = .VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV
    static let enableResourceTracking: VkDeviceDiagnosticsConfigFlagBitsNV = .VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV
    static let enableAutomaticCheckpoints: VkDeviceDiagnosticsConfigFlagBitsNV = .VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV
}

public typealias VkDeviceGroupPresentModeFlagBitsKHR = CVulkan.VkDeviceGroupPresentModeFlagBitsKHR

public extension VkDeviceGroupPresentModeFlagBitsKHR {
    static let local: VkDeviceGroupPresentModeFlagBitsKHR = .VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR
    static let remote: VkDeviceGroupPresentModeFlagBitsKHR = .VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR
    static let sum: VkDeviceGroupPresentModeFlagBitsKHR = .VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR
    static let localMultiDevice: VkDeviceGroupPresentModeFlagBitsKHR = .VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR
}

public typealias VkDeviceQueueCreateFlagBits = CVulkan.VkDeviceQueueCreateFlagBits

public extension VkDeviceQueueCreateFlagBits {
    static let protected: VkDeviceQueueCreateFlagBits = .VK_DEVICE_QUEUE_CREATE_PROTECTED_BIT
}

public typealias VkDisplayPlaneAlphaFlagBitsKHR = CVulkan.VkDisplayPlaneAlphaFlagBitsKHR

public extension VkDisplayPlaneAlphaFlagBitsKHR {
    static let opaque: VkDisplayPlaneAlphaFlagBitsKHR = .VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR
    static let global: VkDisplayPlaneAlphaFlagBitsKHR = .VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR
    static let perPixel: VkDisplayPlaneAlphaFlagBitsKHR = .VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR
    static let perPixelPremultiplied: VkDisplayPlaneAlphaFlagBitsKHR = .VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR
}

public typealias VkEventCreateFlagBits = CVulkan.VkEventCreateFlagBits

public extension VkEventCreateFlagBits {
    static let deviceOnly: VkEventCreateFlagBits = .VK_EVENT_CREATE_DEVICE_ONLY_BIT
    static let deviceOnlyKhr: VkEventCreateFlagBits = .VK_EVENT_CREATE_DEVICE_ONLY_BIT_KHR
}

public typealias VkExternalFenceFeatureFlagBits = CVulkan.VkExternalFenceFeatureFlagBits

public extension VkExternalFenceFeatureFlagBits {
    static let exportable: VkExternalFenceFeatureFlagBits = .VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT
    static let importable: VkExternalFenceFeatureFlagBits = .VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT
    static let exportableKhr: VkExternalFenceFeatureFlagBits = .VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR
    static let importableKhr: VkExternalFenceFeatureFlagBits = .VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR
}

public typealias VkExternalFenceHandleTypeFlagBits = CVulkan.VkExternalFenceHandleTypeFlagBits

public extension VkExternalFenceHandleTypeFlagBits {
    static let opaqueFd: VkExternalFenceHandleTypeFlagBits = .VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT
    static let opaqueWin32: VkExternalFenceHandleTypeFlagBits = .VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT
    static let opaqueWin32Kmt: VkExternalFenceHandleTypeFlagBits = .VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT
    static let syncFd: VkExternalFenceHandleTypeFlagBits = .VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT
    static let opaqueFdKhr: VkExternalFenceHandleTypeFlagBits = .VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR
    static let opaqueWin32Khr: VkExternalFenceHandleTypeFlagBits = .VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR
    static let opaqueWin32KmtKhr: VkExternalFenceHandleTypeFlagBits = .VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR
    static let syncFdKhr: VkExternalFenceHandleTypeFlagBits = .VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR
}

public typealias VkExternalMemoryFeatureFlagBits = CVulkan.VkExternalMemoryFeatureFlagBits

public extension VkExternalMemoryFeatureFlagBits {
    static let dedicatedOnly: VkExternalMemoryFeatureFlagBits = .VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT
    static let exportable: VkExternalMemoryFeatureFlagBits = .VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT
    static let importable: VkExternalMemoryFeatureFlagBits = .VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT
    static let dedicatedOnlyKhr: VkExternalMemoryFeatureFlagBits = .VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR
    static let exportableKhr: VkExternalMemoryFeatureFlagBits = .VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR
    static let importableKhr: VkExternalMemoryFeatureFlagBits = .VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR
}

public typealias VkExternalMemoryFeatureFlagBitsNV = CVulkan.VkExternalMemoryFeatureFlagBitsNV

public extension VkExternalMemoryFeatureFlagBitsNV {
    static let dedicatedOnly: VkExternalMemoryFeatureFlagBitsNV = .VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV
    static let exportable: VkExternalMemoryFeatureFlagBitsNV = .VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV
    static let importable: VkExternalMemoryFeatureFlagBitsNV = .VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV
}

public typealias VkExternalMemoryHandleTypeFlagBits = CVulkan.VkExternalMemoryHandleTypeFlagBits

public extension VkExternalMemoryHandleTypeFlagBits {
    static let opaqueFd: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT
    static let opaqueWin32: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT
    static let opaqueWin32Kmt: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT
    static let d3D11Texture: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT
    static let d3D11TextureKmt: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT
    static let d3D12Heap: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT
    static let d3D12Resource: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT
    static let opaqueFdKhr: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR
    static let opaqueWin32Khr: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR
    static let opaqueWin32KmtKhr: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR
    static let d3D11TextureKhr: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR
    static let d3D11TextureKmtKhr: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR
    static let d3D12HeapKhr: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR
    static let d3D12ResourceKhr: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR
    static let dmaBufExt: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT
    #if VOLCANO_PLATFORM_ANDROID
        static let androidHardwareBufferAndroid: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID
    #endif
    static let hostAllocationExt: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT
    static let hostMappedForeignMemoryExt: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT
    static let zirconVmoFuchsia: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_ZIRCON_VMO_BIT_FUCHSIA
    static let rdmaAddressNv: VkExternalMemoryHandleTypeFlagBits = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_RDMA_ADDRESS_BIT_NV
}

public typealias VkExternalMemoryHandleTypeFlagBitsNV = CVulkan.VkExternalMemoryHandleTypeFlagBitsNV

public extension VkExternalMemoryHandleTypeFlagBitsNV {
    static let opaqueWin32: VkExternalMemoryHandleTypeFlagBitsNV = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV
    static let opaqueWin32Kmt: VkExternalMemoryHandleTypeFlagBitsNV = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV
    static let d3D11Image: VkExternalMemoryHandleTypeFlagBitsNV = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV
    static let d3D11ImageKmt: VkExternalMemoryHandleTypeFlagBitsNV = .VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV
}

public typealias VkExternalSemaphoreFeatureFlagBits = CVulkan.VkExternalSemaphoreFeatureFlagBits

public extension VkExternalSemaphoreFeatureFlagBits {
    static let exportable: VkExternalSemaphoreFeatureFlagBits = .VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT
    static let importable: VkExternalSemaphoreFeatureFlagBits = .VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT
    static let exportableKhr: VkExternalSemaphoreFeatureFlagBits = .VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR
    static let importableKhr: VkExternalSemaphoreFeatureFlagBits = .VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR
}

public typealias VkExternalSemaphoreHandleTypeFlagBits = CVulkan.VkExternalSemaphoreHandleTypeFlagBits

public extension VkExternalSemaphoreHandleTypeFlagBits {
    static let opaqueFd: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT
    static let opaqueWin32: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT
    static let opaqueWin32Kmt: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT
    static let d3D12Fence: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT
    static let d3D11Fence: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D11_FENCE_BIT
    static let syncFd: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT
    static let opaqueFdKhr: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR
    static let opaqueWin32Khr: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR
    static let opaqueWin32KmtKhr: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR
    static let d3D12FenceKhr: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR
    static let syncFdKhr: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR
    static let zirconEventFuchsia: VkExternalSemaphoreHandleTypeFlagBits = .VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_ZIRCON_EVENT_BIT_FUCHSIA
}

public typealias VkFenceCreateFlagBits = CVulkan.VkFenceCreateFlagBits

public extension VkFenceCreateFlagBits {
    static let signaled: VkFenceCreateFlagBits = .VK_FENCE_CREATE_SIGNALED_BIT
}

public typealias VkFenceImportFlagBits = CVulkan.VkFenceImportFlagBits

public extension VkFenceImportFlagBits {
    static let temporary: VkFenceImportFlagBits = .VK_FENCE_IMPORT_TEMPORARY_BIT
    static let temporaryKhr: VkFenceImportFlagBits = .VK_FENCE_IMPORT_TEMPORARY_BIT_KHR
}

public typealias VkFormatFeatureFlagBits = CVulkan.VkFormatFeatureFlagBits

public extension VkFormatFeatureFlagBits {
    static let sampledImage: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
    static let storageImage: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
    static let storageImageAtomic: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
    static let uniformTexelBuffer: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
    static let storageTexelBuffer: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
    static let storageTexelBufferAtomic: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
    static let vertexBuffer: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT
    static let colorAttachment: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
    static let colorAttachmentBlend: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
    static let depthStencilAttachment: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
    static let blitSource: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_BLIT_SRC_BIT
    static let blitDestination: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_BLIT_DST_BIT
    static let sampledImageFilterLinear: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
    static let transferSource: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_TRANSFER_SRC_BIT
    static let transferDestination: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_TRANSFER_DST_BIT
    static let midpointChromaSamples: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT
    static let sampledImageYcbcrConversionLinearFilter: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT
    static let sampledImageYcbcrConversionSeparateReconstructionFilter: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT
    static let sampledImageYcbcrConversionChromaReconstructionExplicit: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT
    static let sampledImageYcbcrConversionChromaReconstructionExplicitForceable: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT
    static let disjoint: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_DISJOINT_BIT
    static let cositedChromaSamples: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT
    static let sampledImageFilterMinmax: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT
    static let sampledImageFilterCubicImg: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG
    static let transferSourceKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR
    static let transferDestinationKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR
    static let sampledImageFilterMinmaxExt: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT
    static let accelerationStructureVertexBufferKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR
    static let midpointChromaSamplesKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR
    static let sampledImageYcbcrConversionLinearFilterKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR
    static let sampledImageYcbcrConversionSeparateReconstructionFilterKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR
    static let sampledImageYcbcrConversionChromaReconstructionExplicitKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR
    static let sampledImageYcbcrConversionChromaReconstructionExplicitForceableKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR
    static let disjointKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_DISJOINT_BIT_KHR
    static let cositedChromaSamplesKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR
    static let sampledImageFilterCubicExt: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT
    static let fragmentDensityMapExt: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT
    static let fragmentShadingRateAttachmentKhr: VkFormatFeatureFlagBits = .VK_FORMAT_FEATURE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
}

public typealias VkFramebufferCreateFlagBits = CVulkan.VkFramebufferCreateFlagBits

public extension VkFramebufferCreateFlagBits {
    static let imageless: VkFramebufferCreateFlagBits = .VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT
    static let imagelessKhr: VkFramebufferCreateFlagBits = .VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR
}

public typealias VkGeometryFlagBitsKHR = CVulkan.VkGeometryFlagBitsKHR

public extension VkGeometryFlagBitsKHR {
    static let opaque: VkGeometryFlagBitsKHR = .VK_GEOMETRY_OPAQUE_BIT_KHR
    static let noDuplicateAnyHitInvocation: VkGeometryFlagBitsKHR = .VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR
    static let opaqueNv: VkGeometryFlagBitsKHR = .VK_GEOMETRY_OPAQUE_BIT_NV
    static let noDuplicateAnyHitInvocationNv: VkGeometryFlagBitsKHR = .VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV
}

public typealias VkGeometryInstanceFlagBitsKHR = CVulkan.VkGeometryInstanceFlagBitsKHR

public extension VkGeometryInstanceFlagBitsKHR {
    static let triangleFacingCullDisable: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR
    static let triangleFlipFacing: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_TRIANGLE_FLIP_FACING_BIT_KHR
    static let forceOpaque: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR
    static let forceNoOpaque: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR
    static let triangleFrontCounterclockwise: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR
    static let triangleCullDisableNv: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV
    static let triangleFrontCounterclockwiseNv: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV
    static let forceOpaqueNv: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV
    static let forceNoOpaqueNv: VkGeometryInstanceFlagBitsKHR = .VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV
}

public typealias VkImageAspectFlagBits = CVulkan.VkImageAspectFlagBits

public extension VkImageAspectFlagBits {
    static let color: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_COLOR_BIT
    static let depth: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_DEPTH_BIT
    static let stencil: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_STENCIL_BIT
    static let metadata: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_METADATA_BIT
    static let plane0: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_PLANE_0_BIT
    static let plane1: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_PLANE_1_BIT
    static let plane2: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_PLANE_2_BIT
    static let plane0Khr: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_PLANE_0_BIT_KHR
    static let plane1Khr: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_PLANE_1_BIT_KHR
    static let plane2Khr: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_PLANE_2_BIT_KHR
    static let memoryPlane0Ext: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT
    static let memoryPlane1Ext: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT
    static let memoryPlane2Ext: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT
    static let memoryPlane3Ext: VkImageAspectFlagBits = .VK_IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT
}

public typealias VkImageCreateFlagBits = CVulkan.VkImageCreateFlagBits

public extension VkImageCreateFlagBits {
    static let sparseBinding: VkImageCreateFlagBits = .VK_IMAGE_CREATE_SPARSE_BINDING_BIT
    static let sparseResidency: VkImageCreateFlagBits = .VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT
    static let sparseAliased: VkImageCreateFlagBits = .VK_IMAGE_CREATE_SPARSE_ALIASED_BIT
    static let mutableFormat: VkImageCreateFlagBits = .VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT
    static let cubeCompatible: VkImageCreateFlagBits = .VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT
    static let alias: VkImageCreateFlagBits = .VK_IMAGE_CREATE_ALIAS_BIT
    static let splitInstanceBindRegions: VkImageCreateFlagBits = .VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT
    static let twoDimensionsArrayCompatible: VkImageCreateFlagBits = .VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT
    static let blockTexelViewCompatible: VkImageCreateFlagBits = .VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT
    static let extendedUsage: VkImageCreateFlagBits = .VK_IMAGE_CREATE_EXTENDED_USAGE_BIT
    static let protected: VkImageCreateFlagBits = .VK_IMAGE_CREATE_PROTECTED_BIT
    static let disjoint: VkImageCreateFlagBits = .VK_IMAGE_CREATE_DISJOINT_BIT
    static let cornerSampledNv: VkImageCreateFlagBits = .VK_IMAGE_CREATE_CORNER_SAMPLED_BIT_NV
    static let splitInstanceBindRegionsKhr: VkImageCreateFlagBits = .VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR
    static let twoDimensionsArrayCompatibleKhr: VkImageCreateFlagBits = .VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR
    static let blockTexelViewCompatibleKhr: VkImageCreateFlagBits = .VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR
    static let extendedUsageKhr: VkImageCreateFlagBits = .VK_IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR
    static let sampleLocationsCompatibleDepthExt: VkImageCreateFlagBits = .VK_IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT
    static let disjointKhr: VkImageCreateFlagBits = .VK_IMAGE_CREATE_DISJOINT_BIT_KHR
    static let aliasKhr: VkImageCreateFlagBits = .VK_IMAGE_CREATE_ALIAS_BIT_KHR
    static let subsampledExt: VkImageCreateFlagBits = .VK_IMAGE_CREATE_SUBSAMPLED_BIT_EXT
    static let fragmentDensityMapOffsetQcom: VkImageCreateFlagBits = .VK_IMAGE_CREATE_FRAGMENT_DENSITY_MAP_OFFSET_BIT_QCOM
}

public typealias VkImageUsageFlagBits = CVulkan.VkImageUsageFlagBits

public extension VkImageUsageFlagBits {
    static let transferSource: VkImageUsageFlagBits = .VK_IMAGE_USAGE_TRANSFER_SRC_BIT
    static let transferDestination: VkImageUsageFlagBits = .VK_IMAGE_USAGE_TRANSFER_DST_BIT
    static let sampled: VkImageUsageFlagBits = .VK_IMAGE_USAGE_SAMPLED_BIT
    static let storage: VkImageUsageFlagBits = .VK_IMAGE_USAGE_STORAGE_BIT
    static let colorAttachment: VkImageUsageFlagBits = .VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
    static let depthStencilAttachment: VkImageUsageFlagBits = .VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
    static let transientAttachment: VkImageUsageFlagBits = .VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT
    static let inputAttachment: VkImageUsageFlagBits = .VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT
    static let shadingRateImageNv: VkImageUsageFlagBits = .VK_IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV
    static let fragmentDensityMapExt: VkImageUsageFlagBits = .VK_IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT
    static let fragmentShadingRateAttachmentKhr: VkImageUsageFlagBits = .VK_IMAGE_USAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
    static let invocationMaskHuawei: VkImageUsageFlagBits = .VK_IMAGE_USAGE_INVOCATION_MASK_BIT_HUAWEI
}

public typealias VkImageViewCreateFlagBits = CVulkan.VkImageViewCreateFlagBits

public extension VkImageViewCreateFlagBits {
    static let fragmentDensityMapDynamicExt: VkImageViewCreateFlagBits = .VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT
    static let fragmentDensityMapDeferredExt: VkImageViewCreateFlagBits = .VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DEFERRED_BIT_EXT
}

public typealias VkIndirectCommandsLayoutUsageFlagBitsNV = CVulkan.VkIndirectCommandsLayoutUsageFlagBitsNV

public extension VkIndirectCommandsLayoutUsageFlagBitsNV {
    static let explicitPreprocess: VkIndirectCommandsLayoutUsageFlagBitsNV = .VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV
    static let indexedSequences: VkIndirectCommandsLayoutUsageFlagBitsNV = .VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV
    static let unorderedSequences: VkIndirectCommandsLayoutUsageFlagBitsNV = .VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV
}

public typealias VkIndirectStateFlagBitsNV = CVulkan.VkIndirectStateFlagBitsNV

public extension VkIndirectStateFlagBitsNV {
    static let flagFrontface: VkIndirectStateFlagBitsNV = .VK_INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV
}

public typealias VkMemoryAllocateFlagBits = CVulkan.VkMemoryAllocateFlagBits

public extension VkMemoryAllocateFlagBits {
    static let deviceMask: VkMemoryAllocateFlagBits = .VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT
    static let deviceAddress: VkMemoryAllocateFlagBits = .VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT
    static let deviceAddressCaptureReplay: VkMemoryAllocateFlagBits = .VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT
    static let deviceMaskKhr: VkMemoryAllocateFlagBits = .VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR
    static let deviceAddressKhr: VkMemoryAllocateFlagBits = .VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR
    static let deviceAddressCaptureReplayKhr: VkMemoryAllocateFlagBits = .VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR
}

public typealias VkMemoryHeapFlagBits = CVulkan.VkMemoryHeapFlagBits

public extension VkMemoryHeapFlagBits {
    static let deviceLocal: VkMemoryHeapFlagBits = .VK_MEMORY_HEAP_DEVICE_LOCAL_BIT
    static let multiInstance: VkMemoryHeapFlagBits = .VK_MEMORY_HEAP_MULTI_INSTANCE_BIT
    static let multiInstanceKhr: VkMemoryHeapFlagBits = .VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR
}

public typealias VkMemoryPropertyFlagBits = CVulkan.VkMemoryPropertyFlagBits

public extension VkMemoryPropertyFlagBits {
    static let deviceLocal: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
    static let hostVisible: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
    static let hostCoherent: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
    static let hostCached: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_HOST_CACHED_BIT
    static let lazilyAllocated: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT
    static let protected: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_PROTECTED_BIT
    static let deviceCoherentAmd: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD
    static let deviceUncachedAmd: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD
    static let rdmaCapableNv: VkMemoryPropertyFlagBits = .VK_MEMORY_PROPERTY_RDMA_CAPABLE_BIT_NV
}

public typealias VkPeerMemoryFeatureFlagBits = CVulkan.VkPeerMemoryFeatureFlagBits

public extension VkPeerMemoryFeatureFlagBits {
    static let copySource: VkPeerMemoryFeatureFlagBits = .VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT
    static let copyDestination: VkPeerMemoryFeatureFlagBits = .VK_PEER_MEMORY_FEATURE_COPY_DST_BIT
    static let genericSource: VkPeerMemoryFeatureFlagBits = .VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT
    static let genericDestination: VkPeerMemoryFeatureFlagBits = .VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT
    static let copySourceKhr: VkPeerMemoryFeatureFlagBits = .VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR
    static let copyDestinationKhr: VkPeerMemoryFeatureFlagBits = .VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR
    static let genericSourceKhr: VkPeerMemoryFeatureFlagBits = .VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR
    static let genericDestinationKhr: VkPeerMemoryFeatureFlagBits = .VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR
}

public typealias VkPerformanceCounterDescriptionFlagBitsKHR = CVulkan.VkPerformanceCounterDescriptionFlagBitsKHR

public extension VkPerformanceCounterDescriptionFlagBitsKHR {
    static let performanceImpacting: VkPerformanceCounterDescriptionFlagBitsKHR = .VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_BIT_KHR
    static let concurrentlyImpacted: VkPerformanceCounterDescriptionFlagBitsKHR = .VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_BIT_KHR
}

public typealias VkPipelineCacheCreateFlagBits = CVulkan.VkPipelineCacheCreateFlagBits

public extension VkPipelineCacheCreateFlagBits {
    static let externallySynchronized: VkPipelineCacheCreateFlagBits = .VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT
    static let externallySynchronizedExt: VkPipelineCacheCreateFlagBits = .VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT
}

public typealias VkPipelineColorBlendStateCreateFlagBits = CVulkan.VkPipelineColorBlendStateCreateFlagBits

public extension VkPipelineColorBlendStateCreateFlagBits {
    static let rasterizationOrderAttachmentAccessArm: VkPipelineColorBlendStateCreateFlagBits = .VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_ARM
}

public typealias VkPipelineCreateFlagBits = CVulkan.VkPipelineCreateFlagBits

public extension VkPipelineCreateFlagBits {
    static let disableOptimization: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT
    static let allowDerivatives: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT
    static let derivative: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_DERIVATIVE_BIT
    static let viewIndexFromDeviceIndex: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT
    static let dispatchBase: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_DISPATCH_BASE_BIT
    static let failOnPipelineCompileRequired: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT
    static let earlyReturnOnFailure: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT
    static let renderingFragmentShadingRateAttachmentKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
    static let rasterizationStateCreateFragmentShadingRateAttachmentKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
    static let renderingFragmentDensityMapAttachmentExt: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT
    static let rasterizationStateCreateFragmentDensityMapAttachmentExt: VkPipelineCreateFlagBits = .VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT
    static let viewIndexFromDeviceIndexKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR
    static let dispatchBaseKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_DISPATCH_BASE_KHR
    static let rayTracingNoNullAnyHitShadersKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR
    static let rayTracingNoNullClosestHitShadersKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR
    static let rayTracingNoNullMissShadersKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR
    static let rayTracingNoNullIntersectionShadersKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR
    static let rayTracingSkipTrianglesKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR
    static let rayTracingSkipAabbsKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR
    static let rayTracingShaderGroupHandleCaptureReplayKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR
    static let deferCompileNv: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_DEFER_COMPILE_BIT_NV
    static let captureStatisticsKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR
    static let captureInternalRepresentationsKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR
    static let indirectBindableNv: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV
    static let libraryKhr: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_LIBRARY_BIT_KHR
    static let failOnPipelineCompileRequiredExt: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT
    static let earlyReturnOnFailureExt: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT
    static let rayTracingAllowMotionNv: VkPipelineCreateFlagBits = .VK_PIPELINE_CREATE_RAY_TRACING_ALLOW_MOTION_BIT_NV
}

public typealias VkPipelineCreationFeedbackFlagBits = CVulkan.VkPipelineCreationFeedbackFlagBits

public extension VkPipelineCreationFeedbackFlagBits {
    static let valid: VkPipelineCreationFeedbackFlagBits = .VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT
    static let validExt: VkPipelineCreationFeedbackFlagBits = .VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT
    static let applicationPipelineCacheHit: VkPipelineCreationFeedbackFlagBits = .VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT
    static let applicationPipelineCacheHitExt: VkPipelineCreationFeedbackFlagBits = .VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT
    static let basePipelineAcceleration: VkPipelineCreationFeedbackFlagBits = .VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT
    static let basePipelineAccelerationExt: VkPipelineCreationFeedbackFlagBits = .VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT
}

public typealias VkPipelineDepthStencilStateCreateFlagBits = CVulkan.VkPipelineDepthStencilStateCreateFlagBits

public extension VkPipelineDepthStencilStateCreateFlagBits {
    static let rasterizationOrderAttachmentDepthAccessArm: VkPipelineDepthStencilStateCreateFlagBits = .VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_ARM
    static let rasterizationOrderAttachmentStencilAccessArm: VkPipelineDepthStencilStateCreateFlagBits = .VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_ARM
}

public typealias VkPipelineShaderStageCreateFlagBits = CVulkan.VkPipelineShaderStageCreateFlagBits

public extension VkPipelineShaderStageCreateFlagBits {
    static let allowVaryingSubgroupSize: VkPipelineShaderStageCreateFlagBits = .VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT
    static let requireFullSubgroups: VkPipelineShaderStageCreateFlagBits = .VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT
    static let allowVaryingSubgroupSizeExt: VkPipelineShaderStageCreateFlagBits = .VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT
    static let requireFullSubgroupsExt: VkPipelineShaderStageCreateFlagBits = .VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT
}

public typealias VkPipelineStageFlagBits = CVulkan.VkPipelineStageFlagBits

public extension VkPipelineStageFlagBits {
    static let topOfPipe: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT
    static let drawIndirect: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT
    static let vertexInput: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_VERTEX_INPUT_BIT
    static let vertexShader: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_VERTEX_SHADER_BIT
    static let tessellationControlShader: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT
    static let tessellationEvaluationShader: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT
    static let geometryShader: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
    static let fragmentShader: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT
    static let earlyFragmentTests: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
    static let lateFragmentTests: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT
    static let colorAttachmentOutput: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
    static let computeShader: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT
    static let transfer: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_TRANSFER_BIT
    static let bottomOfPipe: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT
    static let host: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_HOST_BIT
    static let allGraphics: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT
    static let allCommands: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_ALL_COMMANDS_BIT
    static let transformFeedbackExt: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT
    static let conditionalRenderingExt: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT
    static let accelerationStructureBuildKhr: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR
    static let rayTracingShaderKhr: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR
    static let shadingRateImageNv: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV
    static let rayTracingShaderNv: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV
    static let accelerationStructureBuildNv: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV
    static let taskShaderNv: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_TASK_SHADER_BIT_NV
    static let meshShaderNv: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_MESH_SHADER_BIT_NV
    static let fragmentDensityProcessExt: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT
    static let fragmentShadingRateAttachmentKhr: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
    static let commandPreprocessNv: VkPipelineStageFlagBits = .VK_PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV
}

public typealias VkQueryControlFlagBits = CVulkan.VkQueryControlFlagBits

public extension VkQueryControlFlagBits {
    static let precise: VkQueryControlFlagBits = .VK_QUERY_CONTROL_PRECISE_BIT
}

public typealias VkQueryPipelineStatisticFlagBits = CVulkan.VkQueryPipelineStatisticFlagBits

public extension VkQueryPipelineStatisticFlagBits {
    static let inputAssemblyVertices: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT
    static let inputAssemblyPrimitives: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT
    static let vertexShaderInvocations: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT
    static let geometryShaderInvocations: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT
    static let geometryShaderPrimitives: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT
    static let clippingInvocations: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT
    static let clippingPrimitives: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT
    static let fragmentShaderInvocations: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT
    static let tessellationControlShaderPatches: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT
    static let tessellationEvaluationShaderInvocations: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT
    static let computeShaderInvocations: VkQueryPipelineStatisticFlagBits = .VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT
}

public typealias VkQueryResultFlagBits = CVulkan.VkQueryResultFlagBits

public extension VkQueryResultFlagBits {
    static let sixtyFour: VkQueryResultFlagBits = .VK_QUERY_RESULT_64_BIT
    static let wait: VkQueryResultFlagBits = .VK_QUERY_RESULT_WAIT_BIT
    static let withAvailability: VkQueryResultFlagBits = .VK_QUERY_RESULT_WITH_AVAILABILITY_BIT
    static let partial: VkQueryResultFlagBits = .VK_QUERY_RESULT_PARTIAL_BIT
}

public typealias VkQueueFlagBits = CVulkan.VkQueueFlagBits

public extension VkQueueFlagBits {
    static let graphics: VkQueueFlagBits = .VK_QUEUE_GRAPHICS_BIT
    static let compute: VkQueueFlagBits = .VK_QUEUE_COMPUTE_BIT
    static let transfer: VkQueueFlagBits = .VK_QUEUE_TRANSFER_BIT
    static let sparseBinding: VkQueueFlagBits = .VK_QUEUE_SPARSE_BINDING_BIT
    static let protected: VkQueueFlagBits = .VK_QUEUE_PROTECTED_BIT
}

public typealias VkRenderPassCreateFlagBits = CVulkan.VkRenderPassCreateFlagBits

public extension VkRenderPassCreateFlagBits {
    static let transformQcom: VkRenderPassCreateFlagBits = .VK_RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM
}

public typealias VkRenderingFlagBits = CVulkan.VkRenderingFlagBits

public extension VkRenderingFlagBits {
    static let contentsSecondaryCommandBuffers: VkRenderingFlagBits = .VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT
    static let contentsSecondaryCommandBuffersKhr: VkRenderingFlagBits = .VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT_KHR
    static let suspending: VkRenderingFlagBits = .VK_RENDERING_SUSPENDING_BIT
    static let suspendingKhr: VkRenderingFlagBits = .VK_RENDERING_SUSPENDING_BIT_KHR
    static let resuming: VkRenderingFlagBits = .VK_RENDERING_RESUMING_BIT
    static let resumingKhr: VkRenderingFlagBits = .VK_RENDERING_RESUMING_BIT_KHR
}

public typealias VkResolveModeFlagBits = CVulkan.VkResolveModeFlagBits

public extension VkResolveModeFlagBits {
    static let sampleZero: VkResolveModeFlagBits = .VK_RESOLVE_MODE_SAMPLE_ZERO_BIT
    static let average: VkResolveModeFlagBits = .VK_RESOLVE_MODE_AVERAGE_BIT
    static let min: VkResolveModeFlagBits = .VK_RESOLVE_MODE_MIN_BIT
    static let max: VkResolveModeFlagBits = .VK_RESOLVE_MODE_MAX_BIT
    static let sampleZeroKhr: VkResolveModeFlagBits = .VK_RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR
    static let averageKhr: VkResolveModeFlagBits = .VK_RESOLVE_MODE_AVERAGE_BIT_KHR
    static let minKhr: VkResolveModeFlagBits = .VK_RESOLVE_MODE_MIN_BIT_KHR
    static let maxKhr: VkResolveModeFlagBits = .VK_RESOLVE_MODE_MAX_BIT_KHR
}

public typealias VkSampleCountFlagBits = CVulkan.VkSampleCountFlagBits

public extension VkSampleCountFlagBits {
    static let one: VkSampleCountFlagBits = .VK_SAMPLE_COUNT_1_BIT
    static let two: VkSampleCountFlagBits = .VK_SAMPLE_COUNT_2_BIT
    static let four: VkSampleCountFlagBits = .VK_SAMPLE_COUNT_4_BIT
    static let eight: VkSampleCountFlagBits = .VK_SAMPLE_COUNT_8_BIT
    static let sixteen: VkSampleCountFlagBits = .VK_SAMPLE_COUNT_16_BIT
    static let thirtyTwo: VkSampleCountFlagBits = .VK_SAMPLE_COUNT_32_BIT
    static let sixtyFour: VkSampleCountFlagBits = .VK_SAMPLE_COUNT_64_BIT
}

public typealias VkSamplerCreateFlagBits = CVulkan.VkSamplerCreateFlagBits

public extension VkSamplerCreateFlagBits {
    static let subsampledExt: VkSamplerCreateFlagBits = .VK_SAMPLER_CREATE_SUBSAMPLED_BIT_EXT
    static let subsampledCoarseReconstructionExt: VkSamplerCreateFlagBits = .VK_SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT
}

public typealias VkSemaphoreImportFlagBits = CVulkan.VkSemaphoreImportFlagBits

public extension VkSemaphoreImportFlagBits {
    static let temporary: VkSemaphoreImportFlagBits = .VK_SEMAPHORE_IMPORT_TEMPORARY_BIT
    static let temporaryKhr: VkSemaphoreImportFlagBits = .VK_SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR
}

public typealias VkSemaphoreWaitFlagBits = CVulkan.VkSemaphoreWaitFlagBits

public extension VkSemaphoreWaitFlagBits {
    static let any: VkSemaphoreWaitFlagBits = .VK_SEMAPHORE_WAIT_ANY_BIT
    static let anyKhr: VkSemaphoreWaitFlagBits = .VK_SEMAPHORE_WAIT_ANY_BIT_KHR
}

public typealias VkShaderStageFlagBits = CVulkan.VkShaderStageFlagBits

public extension VkShaderStageFlagBits {
    static let vertex: VkShaderStageFlagBits = .VK_SHADER_STAGE_VERTEX_BIT
    static let tessellationControl: VkShaderStageFlagBits = .VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT
    static let tessellationEvaluation: VkShaderStageFlagBits = .VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT
    static let geometry: VkShaderStageFlagBits = .VK_SHADER_STAGE_GEOMETRY_BIT
    static let fragment: VkShaderStageFlagBits = .VK_SHADER_STAGE_FRAGMENT_BIT
    static let compute: VkShaderStageFlagBits = .VK_SHADER_STAGE_COMPUTE_BIT
    static let allGraphics: VkShaderStageFlagBits = .VK_SHADER_STAGE_ALL_GRAPHICS
    static let all: VkShaderStageFlagBits = .VK_SHADER_STAGE_ALL
    static let raygenKhr: VkShaderStageFlagBits = .VK_SHADER_STAGE_RAYGEN_BIT_KHR
    static let anyHitKhr: VkShaderStageFlagBits = .VK_SHADER_STAGE_ANY_HIT_BIT_KHR
    static let closestHitKhr: VkShaderStageFlagBits = .VK_SHADER_STAGE_CLOSEST_HIT_BIT_KHR
    static let missKhr: VkShaderStageFlagBits = .VK_SHADER_STAGE_MISS_BIT_KHR
    static let intersectionKhr: VkShaderStageFlagBits = .VK_SHADER_STAGE_INTERSECTION_BIT_KHR
    static let callableKhr: VkShaderStageFlagBits = .VK_SHADER_STAGE_CALLABLE_BIT_KHR
    static let raygenNv: VkShaderStageFlagBits = .VK_SHADER_STAGE_RAYGEN_BIT_NV
    static let anyHitNv: VkShaderStageFlagBits = .VK_SHADER_STAGE_ANY_HIT_BIT_NV
    static let closestHitNv: VkShaderStageFlagBits = .VK_SHADER_STAGE_CLOSEST_HIT_BIT_NV
    static let missNv: VkShaderStageFlagBits = .VK_SHADER_STAGE_MISS_BIT_NV
    static let intersectionNv: VkShaderStageFlagBits = .VK_SHADER_STAGE_INTERSECTION_BIT_NV
    static let callableNv: VkShaderStageFlagBits = .VK_SHADER_STAGE_CALLABLE_BIT_NV
    static let taskNv: VkShaderStageFlagBits = .VK_SHADER_STAGE_TASK_BIT_NV
    static let meshNv: VkShaderStageFlagBits = .VK_SHADER_STAGE_MESH_BIT_NV
    static let subpassShadingHuawei: VkShaderStageFlagBits = .VK_SHADER_STAGE_SUBPASS_SHADING_BIT_HUAWEI
}

public typealias VkSparseImageFormatFlagBits = CVulkan.VkSparseImageFormatFlagBits

public extension VkSparseImageFormatFlagBits {
    static let singleMiptail: VkSparseImageFormatFlagBits = .VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT
    static let alignedMipSize: VkSparseImageFormatFlagBits = .VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT
    static let nonstandardBlockSize: VkSparseImageFormatFlagBits = .VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT
}

public typealias VkSparseMemoryBindFlagBits = CVulkan.VkSparseMemoryBindFlagBits

public extension VkSparseMemoryBindFlagBits {
    static let metadata: VkSparseMemoryBindFlagBits = .VK_SPARSE_MEMORY_BIND_METADATA_BIT
}

public typealias VkStencilFaceFlagBits = CVulkan.VkStencilFaceFlagBits

public extension VkStencilFaceFlagBits {
    static let front: VkStencilFaceFlagBits = .VK_STENCIL_FACE_FRONT_BIT
    static let back: VkStencilFaceFlagBits = .VK_STENCIL_FACE_BACK_BIT
    static let frontAndBack: VkStencilFaceFlagBits = .VK_STENCIL_FACE_FRONT_AND_BACK
    static let rontAndBack: VkStencilFaceFlagBits = .VK_STENCIL_FRONT_AND_BACK
}

public typealias VkSubgroupFeatureFlagBits = CVulkan.VkSubgroupFeatureFlagBits

public extension VkSubgroupFeatureFlagBits {
    static let basic: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_BASIC_BIT
    static let vote: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_VOTE_BIT
    static let arithmetic: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_ARITHMETIC_BIT
    static let ballot: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_BALLOT_BIT
    static let shuffle: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_SHUFFLE_BIT
    static let shuffleRelative: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT
    static let clustered: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_CLUSTERED_BIT
    static let quad: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_QUAD_BIT
    static let partitionedNv: VkSubgroupFeatureFlagBits = .VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV
}

public typealias VkSubmitFlagBits = CVulkan.VkSubmitFlagBits

public extension VkSubmitFlagBits {
    static let protected: VkSubmitFlagBits = .VK_SUBMIT_PROTECTED_BIT
    static let protectedKhr: VkSubmitFlagBits = .VK_SUBMIT_PROTECTED_BIT_KHR
}

public typealias VkSubpassDescriptionFlagBits = CVulkan.VkSubpassDescriptionFlagBits

public extension VkSubpassDescriptionFlagBits {
    static let perViewAttributesNvx: VkSubpassDescriptionFlagBits = .VK_SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX
    static let perViewPositionXOnlyNvx: VkSubpassDescriptionFlagBits = .VK_SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX
    static let fragmentRegionQcom: VkSubpassDescriptionFlagBits = .VK_SUBPASS_DESCRIPTION_FRAGMENT_REGION_BIT_QCOM
    static let shaderResolveQcom: VkSubpassDescriptionFlagBits = .VK_SUBPASS_DESCRIPTION_SHADER_RESOLVE_BIT_QCOM
    static let rasterizationOrderAttachmentColorAccessArm: VkSubpassDescriptionFlagBits = .VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_BIT_ARM
    static let rasterizationOrderAttachmentDepthAccessArm: VkSubpassDescriptionFlagBits = .VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_ARM
    static let rasterizationOrderAttachmentStencilAccessArm: VkSubpassDescriptionFlagBits = .VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_ARM
}

public typealias VkSurfaceCounterFlagBitsEXT = CVulkan.VkSurfaceCounterFlagBitsEXT

public extension VkSurfaceCounterFlagBitsEXT {
    static let vblank: VkSurfaceCounterFlagBitsEXT = .VK_SURFACE_COUNTER_VBLANK_BIT_EXT
}

public typealias VkSurfaceTransformFlagBitsKHR = CVulkan.VkSurfaceTransformFlagBitsKHR

public extension VkSurfaceTransformFlagBitsKHR {
    static let identity: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR
    static let rotate90: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR
    static let rotate180: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR
    static let rotate270: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR
    static let horizontalMirror: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR
    static let horizontalMirrorRotate90: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR
    static let horizontalMirrorRotate180: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR
    static let horizontalMirrorRotate270: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR
    static let inherit: VkSurfaceTransformFlagBitsKHR = .VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR
}

public typealias VkSwapchainCreateFlagBitsKHR = CVulkan.VkSwapchainCreateFlagBitsKHR

public extension VkSwapchainCreateFlagBitsKHR {
    static let splitInstanceBindRegions: VkSwapchainCreateFlagBitsKHR = .VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR
    static let protected: VkSwapchainCreateFlagBitsKHR = .VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR
    static let mutableFormat: VkSwapchainCreateFlagBitsKHR = .VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR
}

#if VOLCANO_PLATFORM_ANDROID
    public typealias VkSwapchainImageUsageFlagBitsANDROID = CVulkan.VkSwapchainImageUsageFlagBitsANDROID
#endif

#if VOLCANO_PLATFORM_ANDROID
    public extension VkSwapchainImageUsageFlagBitsANDROID {
        static let shared: VkSwapchainImageUsageFlagBitsANDROID = .VK_SWAPCHAIN_IMAGE_USAGE_SHARED_BIT_ANDROID
    }
#endif

public typealias VkToolPurposeFlagBits = CVulkan.VkToolPurposeFlagBits

public extension VkToolPurposeFlagBits {
    static let validation: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_VALIDATION_BIT
    static let validationExt: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_VALIDATION_BIT_EXT
    static let profiling: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_PROFILING_BIT
    static let profilingExt: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_PROFILING_BIT_EXT
    static let tracing: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_TRACING_BIT
    static let tracingExt: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_TRACING_BIT_EXT
    static let additionalFeatures: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT
    static let additionalFeaturesExt: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT
    static let modifyingFeatures: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT
    static let modifyingFeaturesExt: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT
    static let debugReportingExt: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT
    static let debugMarkersExt: VkToolPurposeFlagBits = .VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT
}
