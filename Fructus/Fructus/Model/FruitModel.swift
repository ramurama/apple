//
//  FruitModel.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    
    var title: String
    
    var headline: String
    
    var image: String
    
    var gradientColors: [Color]
    
    var description: String
    
    var nutrition: [String]
}
