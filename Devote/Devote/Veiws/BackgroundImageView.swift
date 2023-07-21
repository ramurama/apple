//
//  BackgroundImageView.swift
//  Devote
//
//  Created by Ramu Ramasamy on 21.07.23.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        Image("rocket")
        // anialiased modifier helps to keep the edges of the image smooth when it is scaled
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
