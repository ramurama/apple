//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack(spacing: 4) {
            
            //  only the image is animated and not the background that is why background is added to ZStack
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .opacity(isAnimated ? 1 : 0)
            }
            .background(Color(red: product.colorRed, green: product.colorGreen, blue: product.colorBlue))
            .cornerRadius(20)
            .onAppear {
                withAnimation(.easeIn(duration: 0.5)) {
                    isAnimated = true
                }
            }
            
            
            
            
            HStack {
                Text(product.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
            }
            
            HStack {
                Text(product.priceStr)
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            
        }
        .frame(width: 160)
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
