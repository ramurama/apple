//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import SwiftUI

struct ProductDetailView: View {
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
            .background(Color(red: sampleProduct.colorRed, green: sampleProduct.colorGreen, blue: sampleProduct.colorBlue).ignoresSafeArea(.all, edges: .all))
        }
        .zIndex(0)
        
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
