//
//  Settings.swift
//  ColorSwitch
//
//  Created by Pratyush Sharma on 12/08/20.
//  Copyright © 2020 Pratyush Sharma. All rights reserved.
//

import SpriteKit

enum PhysicsCategories {
    static let none: UInt32 = 0
    static let ballCategory: UInt32 = 0x1 // Hexadecimal Form of 1
    static let switchCategory: UInt32 = 0x1 << 1 // Bitwise Left shift operator: 10
}

enum ZPostions {
    static let label: CGFloat = 0
    static let ball: CGFloat = 1
    static let colorSwitch: CGFloat = 2
}
