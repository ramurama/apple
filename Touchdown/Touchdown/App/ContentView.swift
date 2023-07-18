//
//  ContentView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 12.07.23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        // MARK: - FOOTER
        
        
        ZStack {
            // if no product is shown currently also no product is selected
            if shop.showingProduct == false && shop.selectedProduct == nil {
                GeometryReader {
                geometry in
                
                ZStack {
                    VStack(spacing: 0) {
                        NavBarView()
                            .background(.white)
                            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                            .padding(.top, geometry.safeAreaInsets.top)
                        
                        
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 10) {
                                
                                PlayerCarouselView()
                                    .padding(.vertical, 10)
                                    .frame(height: 260)
                                
                                
                                CategoryGridView()
                                
                                SectionHeaderView(title: "Helmets")
                                ProductsGridView()
                                    .padding(.horizontal)
                                
                                SectionHeaderView(title: "Brands")
                                BrandGridView()
                                
                                
                                FooterView()
                                    .padding(.horizontal)
                            }
                        }
                        
                        
                    }
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                }
                .ignoresSafeArea(.all, edges: .top)
                }
            } else {
                ProductDetailView()
            }
        }
        
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
