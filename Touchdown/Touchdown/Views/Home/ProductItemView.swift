//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(spacing: 4) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2]))
                .cornerRadius(20)
            
            
            
            HStack {
                Text(product.name)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Spacer()
            }
            
            HStack {
                Text(product.priceStr)
                    .font(.footnote)
                    .fontWeight(.light)
                
                Spacer()
            }
            
        }
        .frame(width: 160)
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
        
        
    }
}
