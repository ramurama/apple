//
//  FruitListItem.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

struct FruitListItem: View {
    var fruit: Fruit
    
    var body: some View {
        
        HStack {
            Thumbnail(colors: fruit.gradientColors, imageName: fruit.image)
            
            ListItemContent(title: fruit.title, headline: fruit.headline)
        }
    }
}

struct FruitListItem_Previews: PreviewProvider {
    static var previews: some View {
        FruitListItem(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
