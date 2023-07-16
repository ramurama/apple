//
//  ProductsGridView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import SwiftUI

struct ProductsGridView: View {
    var body: some View {
        
        LazyVGrid(columns: gridLayout, spacing: 15) {
            Section(header: ProductsSectionHeaderView()) {
                ForEach(products) {
                    product in
                    
                    NavigationLink(destination: ProductDetailView(), label: {
                        ProductItemView(product: product)
                    })
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
