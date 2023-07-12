//
//  FooterView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 12.07.23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .layoutPriority(2)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .lineLimit(3)
            
            Image("logo-lineal")
            // by using rendering mode template, we can apply any color to the image using the foreground color
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("""
Copyright © Ramu Ramasamy
All rights reserved
Made with ❤️ in Germany
""")
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
            .font(.footnote)
            .fontWeight(.bold)
            .layoutPriority(1)
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
