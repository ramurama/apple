//
//  OnboardingView.swift
//  Restart
//
//  Created by Ramu Ramasamy on 15.06.23.
//

import SwiftUI

struct OnboardinView: View {
    
    //    if a value for the onboarding key is found by the app, then this initialization to true will be skipped.
    //    This initialization will be considered only when the app does not has a defined value for the key before
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                // setting the value to false here will be stored permanently
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardinView()
    }
}
