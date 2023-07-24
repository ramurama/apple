//
//  BlankView.swift
//  Devote
//
//  Created by Ramu Ramasamy on 21.07.23.
//

import SwiftUI

struct BlankView: View {
    var backgroundColor: Color
    var backgroundOpactiy: Double
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(backgroundOpactiy)
        .blendMode(.overlay)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView(
            backgroundColor: .black, backgroundOpactiy: 0.3
        )
        // adding a background to see the effect
        .background(BackgroundImageView())
        .background(backgroundGradient.ignoresSafeArea(.all))
    }
}
