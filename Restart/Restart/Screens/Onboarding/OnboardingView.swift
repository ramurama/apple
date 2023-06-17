//
//  OnboardingView.swift
//  Restart
//
//  Created by Ramu Ramasamy on 15.06.23.
//

import SwiftUI

struct OnboardinView: View {
    
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    
    var body: some View {
        
        
        ZStack {
            
            Color("ColorBlue")
                .ignoresSafeArea(edges: .all)
            
            VStack(spacing: 20) {
                Spacer()
                
                OnboardingHeader()
                
                OnboardingContent()
                
                SliderButton(action: {
                    withAnimation {
                        isOnboardingViewActive = false
                    }
                })
            }
            
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardinView()
    }
}
