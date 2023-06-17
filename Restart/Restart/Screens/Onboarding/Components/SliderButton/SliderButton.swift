//
//  OnboardingFooter.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct SliderButton: View {
    
    @State private var isAnimating: Bool = false
    
    @State var action: () -> ()
    
    // buttonWidth represents the max value of the width
    // minimum width of the button should be 80
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    
    //    will be modified during the drag gesture in accordance to the drag
    @State private var buttonOffset: CGFloat = 0
    
    var body: some View {
        
        ZStack {
            
            SliderButtonCapsule()
            
            SliderButtonDraggableCircle(buttonOffset: buttonOffset, buttonWidth: buttonWidth, action: action)
            
            
        }
        .frame(width: buttonWidth, height: 80, alignment: .center)
        .padding(15)
        .opacity(isAnimating ? 1 : 0)
        .offset(y: isAnimating ? 0 : 40)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
        
    }
}

struct SliderButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea()
            
            SliderButton(action: {
                print("slider button action triggered")
            })
        }
    }
}
