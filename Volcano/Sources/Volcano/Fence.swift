//
//  Fence.swift
//  Volcano
//
//  Created by Serhii Mumriak on 23.05.2020.
//

import Foundation
import TinyFoundation
import CVulkan

public final class Fence: VulkanDeviceEntity<SmartPointer<VkFence_T>> {
    public init(device: Device) throws {
        let info = VkFenceCreateInfo(sType: VK_STRUCTURE_TYPE_FENCE_CREATE_INFO, pNext: nil, flags: 0)

        let handlePointer = try device.create(with: info)

        try super.init(device: device, handlePointer: handlePointer)
    }
}
