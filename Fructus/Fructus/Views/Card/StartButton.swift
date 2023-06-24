//
//  StartButton.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

struct StartButton: View {
    
    @AppStorage("isOnboardingDone") var isOnboadringDone: Bool?
    
    var body: some View {
        Button(action: {
            isOnboadringDone = true
        }, label: {
            HStack {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                .imageScale(.large)                }
            
        })
        .accentColor(.white)
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(Capsule()
            .stroke(lineWidth: 1.25)
            .foregroundColor(.white)
        )
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
