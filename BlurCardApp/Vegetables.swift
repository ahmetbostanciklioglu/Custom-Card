//
//  Vegetables.swift
//  Custom Card
//
//  Created by Ahmet Bostancıklıoğlu on 22.08.2025.
//

import Foundation

// MARK: - Vegetables Model
struct Vegetables: Identifiable {
    let id: UUID = UUID()
    let image: String
    let title: String
    let subtitle: String
}

//MARK: - Vegetables mock data
extension Vegetables {
    static let allCases: [Vegetables] = [
        .init(image: "image", title: "Peppers", subtitle: "100g"),
        .init(image: "image2", title: "Onions", subtitle: "150g"),
        .init(image: "image3", title: "Tomatoes", subtitle: "200g"),
    ]
}
