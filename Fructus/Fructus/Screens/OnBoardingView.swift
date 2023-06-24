//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

struct OnBoardingView: View {
    
    var body: some View {
        TabView {
            ForEach (fruitsData[0...5]) {
                fruit in
                
                CardView(
                    bgGradient: LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom),
                    image: fruit.image,
                    name: fruit.title,
                    info: fruit.headline)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
