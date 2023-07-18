//
//  DetailBottomView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import SwiftUI

struct DetailBottomView: View {
    var body: some View {
        VStack {
            // ratings + sizes
            DetailRatingsSizesView()
                .padding(.top, -20)
                .padding(.bottom, 10)
            
            // description
            ScrollView(.vertical, showsIndicators: false) {
                Text(sampleProduct.description)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
            }
            
            
            
            // qty + favorite
            QuantityFavoriteDetailView()
            
            // add to cart
            AddToCartDetailView()
                .padding(.bottom, 30)
        }
        .padding(.horizontal)
        
        
    }
}

struct DetailBottomView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBottomView()
            .previewLayout(.sizeThatFits)
            
    }
}
