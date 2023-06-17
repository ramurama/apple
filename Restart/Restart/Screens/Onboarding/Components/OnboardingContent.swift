//
//  OnboardingContent.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct OnboardingContent: View {
    var body: some View {
        ZStack {
            ZStack {
                CircleGroupView(circleColor: .white, circleOpacity: 0.2)
                
                Image("character-1")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

struct OnboardingContent_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea()
            
            OnboardingContent()
        }
    }
}
