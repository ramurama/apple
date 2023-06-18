//
//  OnboardingHeader.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct OnboardingHeader: View {
    
    @State private var isAnimating: Bool = false
    
    private let title: String = "Share."
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Text(title)
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
            .opacity(isAnimating ? 1 : 0)
            .offset(y: isAnimating ? 0 : -40)
        .animation(.easeOut(duration: 1), value: isAnimating)
        }.onAppear(perform: {
            isAnimating = true
        })
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
