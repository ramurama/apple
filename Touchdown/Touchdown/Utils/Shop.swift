//
//  Shop.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    
    @Published var selectedProduct: Product? = nil
}
