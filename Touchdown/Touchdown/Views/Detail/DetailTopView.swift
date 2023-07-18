//
//  DetailTopView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import SwiftUI

struct DetailTopView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Price")
                    .font(.footnote)
                    .fontWeight(.black)
                
                Text(sampleProduct.priceStr)
                    .font(.system(size: 32))
                    .fontWeight(.black)
                
                Spacer()
            }
            .padding(.top, 40)
            
            Image(sampleProduct.image)
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
