//
//  ProductsGridView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import SwiftUI

struct ProductsGridView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        LazyVGrid(columns: gridLayout, spacing: 15) {
            
            ForEach(products) {
                product in
                
                ProductItemView(product: product)
                    .onTapGesture {
                        withAnimation(.easeOut) {
                            shop.showingProduct = true
                            shop.selectedProduct = product
                        }
                    }
            }
            
        }
    }
    
}

struct ProductsGridView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ProductsGridView()
                .previewLayout(.sizeThatFits)
                .padding()
                .background(colorBackground)
        }
    }
}
