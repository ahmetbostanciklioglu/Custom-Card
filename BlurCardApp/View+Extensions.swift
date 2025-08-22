//
//  View+Extensions.swift
//  Custom Card
//
//  Created by Ahmet Bostancıklıoğlu on 22.08.2025.
//

import SwiftUI

extension View {
    // Image Modifiers
    func imageModifier() -> some View {
        self
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding(.horizontal)
            .padding(.vertical, 8)
            .shadow(radius: 0.3, y: 0.3)
    }
    
    // Gradient blur overlay modifier
    func gradientBlurOverlay<Overlay: View> (
        @ViewBuilder overlay: @escaping () -> Overlay
    ) -> some View {
        modifier(BlurOverlay(overlay: overlay))
    }
}
