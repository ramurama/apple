//
//  CoverImage.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 25.06.23.
//

import SwiftUI

struct CoverImage: View {
    var image: String
    var gradientColors: [Color]
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(image)
                .renderImageCorrectly()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
                
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
            
    }
}

struct CoverImage_Previews: PreviewProvider {
    static var previews: some View {
        CoverImage(
            image: fruitsData[0].image, gradientColors: fruitsData[0].gradientColors)
        .previewLayout(.fixed(width: 375, height: 440))
    }
}
 
