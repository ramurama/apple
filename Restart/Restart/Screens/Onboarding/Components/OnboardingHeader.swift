//
//  OnboardingHeader.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct OnboardingHeader: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Share.")
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            Text("""
            It's not how much we give but
            how much love we put into giving
            """)
            .font(.title3)
            .fontWeight(.light)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 10)
        }
    }
}

struct OnboardingHeader_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea()
            
            OnboardingHeader()
        }
    }
}
