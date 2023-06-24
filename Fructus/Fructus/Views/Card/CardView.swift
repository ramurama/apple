//
//  CardView.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

struct CardView: View {
    @State var isAnimating: Bool = false
    
    var bgGradient: LinearGradient
    var image: String
    var name: String
    var info: String

    
    var body: some View {
        ZStack {
            
            bgGradient
            
            VStack(spacing: 10) {
                Image(image)
                    .renderImageCorrectly()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 0, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                
                Text(name)
                    .size(size: 32)
                    .foregroundColor(.white)
                    .bold()
                
                
                Text(info)
                    .foregroundColor(.white)
                    .light()
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 480)
                
                
                StartButton()
            }
            
            
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(width: 350, height: 700)
        .cornerRadius(30)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            bgGradient: LinearGradient(colors: [.customBlueberryLight, .customBlueberryDark], startPoint: .top, endPoint: .bottom),
            image: "blueberry",
            name: "Blueberry",
            info: "Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
        
    }
}
