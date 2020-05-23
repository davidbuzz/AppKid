//
//  VulkanImageView.swift
//  Volcano
//
//  Created by Serhii Mumriak on 19.05.2020.
//

import Foundation
import TinyFoundation
import CVulkan

public final class VulkanImageView: VulkanDeviceEntity<CustomDestructablePointer<VkImageView_T>> {
    public unowned let image: VulkanImage

    public init(image: VulkanImage) throws {
        self.image = image

        var componentMapping = VkComponentMapping()
        componentMapping.r = VK_COMPONENT_SWIZZLE_IDENTITY
        componentMapping.g = VK_COMPONENT_SWIZZLE_IDENTITY
        componentMapping.a = VK_COMPONENT_SWIZZLE_IDENTITY
        componentMapping.a = VK_COMPONENT_SWIZZLE_IDENTITY

        var subresourceRange = VkImageSubresourceRange()
        subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT.rawValue
        subresourceRange.baseMipLevel = 0
        subresourceRange.levelCount = 1
        subresourceRange.baseArrayLayer = 0
        subresourceRange.layerCount = 1

        var imageViewCreationInfo = VkImageViewCreateInfo()
        imageViewCreationInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
        imageViewCreationInfo.image = image.handle
        imageViewCreationInfo.viewType = VK_IMAGE_VIEW_TYPE_2D
        imageViewCreationInfo.format = image.format
        imageViewCreationInfo.components = componentMapping
        imageViewCreationInfo.subresourceRange = subresourceRange

        let device = image.device

        let handle: VkImageView = try device.handle.createEntity(info: &imageViewCreationInfo, using: vkCreateImageView)

        let handlePointer = CustomDestructablePointer(with: handle) { [unowned device] in
            vkDestroyImageView(device.handle, $0, nil)
        }

        try super.init(device: image.device, handlePointer: handlePointer)
    }
}
