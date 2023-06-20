//
//  ContentView.swift
//  Restart
//
//  Created by Ramu Ramasamy on 15.06.23.
//

import SwiftUI

struct ContentView: View {
    
    //    if a value for the onboarding key is found by the app, then this initialization to true will be skipped.
    //    This initialization will be considered only when the app does not has a defined value for the key before
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            
            if isOnboardingViewActive {
                OnboardinView()
            } else {
                HomeView()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
