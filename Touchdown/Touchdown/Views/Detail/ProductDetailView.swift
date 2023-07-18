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
                
                // Header
                // Detail top part
                // detail bottom part
                // ratings + sizes
                // description
                // qty + favorite
                // ad to cart
                
                DetailViewNavBar()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)
                    
                
                DetailHeaderView()

                DetailTopView()
                
                Spacer()
            }
            .ignoresSafeArea(.all, edges: .all)
            .background(Color(red: sampleProduct.colorRed, green: sampleProduct.colorGreen, blue: sampleProduct.colorBlue).ignoresSafeArea(.all, edges: .all))
        }
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
