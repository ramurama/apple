//
//  ExploreButton.swift
//  Hike
//
//  Created by Ramu Ramasamy on 22.06.23.
//

import SwiftUI

struct ExploreButton: View {
    var action: () -> ()
    
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            Text("Explore More")
                .fontWeight(.bold)
                .foregroundColor(.customGreenLight)
                .font(.system(size: 18))
        })
        .buttonStyle(GradientButton())
        
    }
}

struct ExploreButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.customGreenLight
            
            ExploreButton(action: {
                print("button pressed")
            })
            
        }
        .ignoresSafeArea(.all)
    }
}
