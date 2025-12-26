//
//  ComponentColors.swift
//  PCL.Mac
//
//  自动收集并对外提供 Components 层使用的颜色常量
//

import SwiftUI

public struct ComponentColors {
    // 基础语义颜色
    public static let tagDefault: Color = .white
    public static let iconForeground: Color = .white
    public static let transparent: Color = .clear

    // 通用遮罩 / hover
    public static let hoverMask: Color = Color(hex: 0xFFFFFF, alpha: 0.17)

    // 标签与状态颜色
    public static let devTagBackground: Color = Color(hex: 0x9BF00B)
    public static let devTagForeground: Color = Color(hex: 0x343D4A)

    // 文本/次要文本
    public static let descriptionText: Color = Color(hex: 0x9A9A9A)
    public static let mutedText: Color = Color(hex: 0x8C8C8C)

    // 预览 / 测试用背景色
    public static let previewBg1: Color = Color(hex: 0xC4CEE6)
    public static let myCardPreviewBg: Color = Color(hex: 0xC7D9F0)

    // 按钮/弹窗/危险色
    public static let danger: Color = Color(hex: 0xFF4C4C)
    public static let black: Color = Color(hex: 0x000000)

    // 弹窗专用
    public static let popupMask: Color = Color(hex: 0x000000, alpha: 0.7)
    public static let popupErrorMask: Color = Color(hex: 0x470000, alpha: 0.7)
    public static let popupErrorText: Color = Color(hex: 0xF50000)

    // 提示（Hint）颜色
    public static let hintText: Color = Color(hex: 0xECEFF1)
    public static let hintInfo: Color = Color(hex: 0x0A8EFC)
    public static let hintFinish: Color = Color(hex: 0x1DA01D)
    public static let hintCritical: Color = Color(hex: 0xFF2B00)

    // 搜索/占位相关
    public static let searchPlaceholder: Color = Color(hex: 0x8C8C8C)
}
