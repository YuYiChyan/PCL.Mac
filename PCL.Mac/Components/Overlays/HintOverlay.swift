//
//  HintOverlay.swift
//  PCL.Mac
//
//  Created by YiZhiMCQiu on 2025/6/26.
//

import SwiftUI

struct HintOverlay: View {
    @ObservedObject private var hintManager: HintManager = .default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(hintManager.hints.suffix(10)) { hint in
                HintComponent(hint: hint)
            }
        }
    }
}

fileprivate struct HintComponent: View {
    let hint: Hint
    
    @State private var offsetX: CGFloat = 0
    
    var body: some View {
            HStack {
                Text(hint.text)
                    .font(.custom("PCL English", size: 14))
                    .foregroundStyle(Color(hex: 0xECEFF1))
            }
            .transition(
                .asymmetric(
                    insertion: .identity,
                    removal: .move(edge: .leading).combined(with: .opacity)
                )
            )
            .padding(4)
            .background(
                GeometryReader { geo in
                    RoundedRectangle(cornerRadius: 5)
                        .fill(getBackgroundColor())
                        .frame(width: geo.size.width + 20)
                        .offset(x: -20)
                        .onAppear {
                            offsetX = -geo.size.width
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0)) {
                                offsetX = 0
                            }
                        }
                }
            )
            .offset(x: offsetX)
    }
    
    private func getBackgroundColor() -> Color {
        switch hint.type {
        case .info: ComponentColors.hintInfo
        case .finish: ComponentColors.hintFinish
        case .critical: ComponentColors.hintCritical
        }
    }
}
