//
//  DetailTopView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import SwiftUI

struct DetailTopView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Price")
                    .font(.footnote)
                    .fontWeight(.black)
                
                Text(shop.selectedProduct?.priceStr ?? "")
                    .font(.system(size: 32))
                    .fontWeight(.black)
                
                Spacer()
            }
            .padding(.top, 40)
            
            Image(shop.selectedProduct?.image ?? "")
                .resizable()
                .scaledToFit()
        }
        .frame(height: 250)
        .padding(.horizontal)
    }
}

struct DetailTopView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTopView()
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
