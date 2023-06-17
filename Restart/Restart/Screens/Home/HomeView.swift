//
//  HomeView.swift
//  Restart
//
//  Created by Ramu Ramasamy on 15.06.23.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            Spacer()
            HomeContent()
            
            Spacer()
            RestartButton(action: {
                withAnimation {
                    isOnboardingViewActive = true
                }
            })
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
