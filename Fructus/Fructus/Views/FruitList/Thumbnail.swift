//
//  Thumbnail.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

struct Thumbnail: View {
    
    var colors: [Color]
    var imageName: String
    
    var body: some View {
        
        Image(imageName)
            .renderImageCorrectly()
            .frame(width: 80, height: 80, alignment: .center)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
            .background(LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom))
            .cornerRadius(10)
        
    }
}

struct Thumbnail_Previews: PreviewProvider {
    static var previews: some View {
        Thumbnail(colors: fruitsData[0].gradientColors, imageName: fruitsData[0].image)
            .previewLayout(.sizeThatFits)
    }
}
