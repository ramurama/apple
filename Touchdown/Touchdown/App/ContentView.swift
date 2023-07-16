//
//  ContentView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 12.07.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         // MARK: - FOOTER
        NavigationView {
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
                                
                                ProductsGridView()
                                    .padding(.horizontal)
                                    
                                
                                FooterView()
                                    .padding(.horizontal)
                            }
                        }
                        
                        
                    }
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                }
                .ignoresSafeArea(.all, edges: .top)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
