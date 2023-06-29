//
//  CoverImage.swift
//  Africa
//
//  Created by Ramu Ramasamy on 29.06.23.
//

import SwiftUI

struct CoverImageCarousel: View {
    private var coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) {
                item in
                
                Image(item.name)
                    .resizable()
                // this modifier sets the image to touch the horizontal edges in a fixed size frame
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 280)
    }
}

struct CoverImageCarousel_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageCarousel()
            .previewLayout(.sizeThatFits)
    }
}
