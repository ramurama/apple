//
//  Product.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import Foundation

struct Product: Identifiable, Codable {
    let id: Int
    let name: String
    let image: String
    let price: Double
    let description: String
    let color: [Double]
    
    var priceStr: String {
        "$\(price)"
    }
}
