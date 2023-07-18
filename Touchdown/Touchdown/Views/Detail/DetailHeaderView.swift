//
//  DetailHeaderView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import SwiftUI

struct DetailHeaderView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Text("Protective Gear")
                    .font(.footnote)
                    .foregroundColor(.white)
                    
                
                Spacer()
            }
            
            HStack {
                Text(shop.selectedProduct?.name ?? "")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView()
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
