//
//  GalleryView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI

struct ImageGalleryView: View {
    var images: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(images, id: \.self) {
                    image in
                    
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                        )
                        .frame(width: UIScreen.main.bounds.width * 0.8)
                        .padding(5)
                }
            }
        }
    }
}

struct ImageGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        ImageGalleryView(images: animals[0].gallery)
    }
}
