//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.colorRed ?? sampleProduct.colorRed,
                green: shop.selectedProduct?.colorGreen ?? sampleProduct.colorGreen,
                blue: shop.selectedProduct?.colorBlue ?? sampleProduct.colorBlue)
            )
        .clipShape(Capsule())
        
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
    }
}
