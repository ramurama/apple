//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        GeometryReader {
            geometry in
            
            VStack (spacing: 0) {
                
                // detail navbar
                DetailViewNavBar()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)
                    
                    
                // Header
                DetailHeaderView()

                // Detail top part
                DetailTopView()
                    .zIndex(1)
                
                // detail bottom part
                DetailBottomView()
                    .background(
                        Color.white.clipShape(CustomShape())
                            .padding(.top, -105)
                    )

            }
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(
                    red: shop.selectedProduct?.colorRed ?? sampleProduct.colorRed,
                    green: shop.selectedProduct?.colorGreen ?? sampleProduct.colorGreen,
                    blue: shop.selectedProduct?.colorBlue ?? sampleProduct.colorBlue)
                .ignoresSafeArea(.all, edges: .all)
            )
        }
        .zIndex(0)
        .swipeActions {
            
        }
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
