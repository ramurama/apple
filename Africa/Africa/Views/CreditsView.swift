//
//  CreditsView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 11.07.23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            
            Image("compass")
                .resizable()
                .scaledToFit()
                .opacity(0.6)
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright - Ramu Ramasamy
    All rights reserved
    Better Apps ❤️ Less Code
    """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
