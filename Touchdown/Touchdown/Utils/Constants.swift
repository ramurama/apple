//
//  Constants.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 12.07.23.
//

import SwiftUI

let colorBackground: Color = Color("ColorBackground")
let colorGrey: Color = Color(UIColor.systemGray4)


let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
