//
//  OnboardingContent.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct OnboardingContent: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        ZStack {
            CircleGroupView(circleColor: .white, circleOpacity: 0.2)
            
            Image("character-1")
                .resizable()
                .scaledToFit()
                .opacity(isAnimating ? 1 : 0)
                .animation(.easeOut(duration: 1), value: isAnimating)
        }.onAppear(perform: {
            isAnimating = true
        })
        
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
