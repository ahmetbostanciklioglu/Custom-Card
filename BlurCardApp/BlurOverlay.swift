//
//  BlurOverlay.swift
//  Custom Card
//
//  Created by Ahmet Bostancıklıoğlu on 22.08.2025.
//

import SwiftUI

// MARK: - Blur Overlay Effect
struct BlurOverlay<Overlay: View>: ViewModifier {
    let overlay: () -> Overlay
    @State private var height: CGFloat = 300
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottom) {
            content
            
            Rectangle()
                .fill(.ultraThinMaterial)
                .mask {
                    LinearGradient(
                        colors: [
                            .clear,
                            .black.opacity(0.1),
                            .black.opacity(0.7),
                            .black.opacity(0.9),
                            .black,
                            .black,
                            .black,
                            .black
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                }
                .frame(height: height)
            
            overlay()
                .onGeometryChange(for: CGSize.self) { geometry in
                    geometry.size
                } action: { newValue in
                    height = newValue.height
                }
        }
    }
}


