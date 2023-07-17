//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 17.07.23.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) {
                    brand in
                    
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding()
        }
        
        
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
       
            BrandGridView()
        
            
    }
}
