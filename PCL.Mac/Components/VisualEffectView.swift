//
//  VisualEffectView.swift
//  PCL.Mac
//
//  原生 macOS 毛玻璃封装（NSVisualEffectView -> SwiftUI）
//

import SwiftUI
import AppKit

/// 一个轻量的 NSVisualEffectView 封装，用于在 SwiftUI 中使用原生毛玻璃效果。
/// 使用示例：
/// `.background(VisualEffectView(material: .contentBackground).clipShape(RoundedRectangle(cornerRadius: 6)))`
public struct VisualEffectView: NSViewRepresentable {
    public var material: NSVisualEffectView.Material = .contentBackground
    public var blendingMode: NSVisualEffectView.BlendingMode = .withinWindow
    public var state: NSVisualEffectView.State = .followsWindowActiveState

    public init(material: NSVisualEffectView.Material = .contentBackground,
                blendingMode: NSVisualEffectView.BlendingMode = .withinWindow,
                state: NSVisualEffectView.State = .followsWindowActiveState) {
        self.material = material
        self.blendingMode = blendingMode
        self.state = state
    }

    public func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.material = material
        view.blendingMode = blendingMode
        view.state = state
        view.wantsLayer = true
        view.layer?.masksToBounds = true
        return view
    }

    public func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        nsView.material = material
        nsView.blendingMode = blendingMode
        nsView.state = state
    }
}
