//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 17.07.23.
//

import SwiftUI

struct BrandItemView: View {
    var brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: .gray.opacity(0.2), radius: 20, x: 2, y: 10)
            
            
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
