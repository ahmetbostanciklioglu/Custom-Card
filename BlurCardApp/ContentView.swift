//
//  ContentView.swift
//  Custom Card
//
//  Created by Ahmet Bostancıklıoğlu on 21.08.2025.
//

import SwiftUI

struct BlurCardView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                // MARK: - Image Card List
                LazyVStack(spacing: 0) {
                    ForEach(Vegetables.allCases, id: \.id) { veg in
                        Image(veg.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .gradientBlurOverlay { overlay(vegetable: veg) }
                            .imageModifier()
                    }
                }
            }
            .navigationTitle("VEGETABLES")
            .scrollIndicators(.hidden)
        }
    }
}

// MARK: - Overlay Content
extension BlurCardView {
    func overlay(vegetable veg: Vegetables) -> some View {
        VStack(alignment: .leading) {
            Text(veg.title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(veg.subtitle)
                .font(.callout)
                .fontWeight(.medium)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundStyle(.white)
        .padding()
    }
}

#Preview {
    BlurCardView()
}
