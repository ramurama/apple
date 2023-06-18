//
//  OnboardingContent.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct OnboardingContent: View {
    
    @State private var isAnimating: Bool = false
    
    //    both the following stateements are exactly equivalent
    //    @State private var imageOffset: CGSize = CGSize(width: 0, height: 0)
    
    @State private var imageOffset: CGSize = .zero
    
    @State private var indicatorOpacity: Double = 1.0
    
    
    var body: some View {
        
        ZStack {
            
            //            MARK: CIRCLE GROUP
            CircleGroupView(circleColor: .white, circleOpacity: 0.2)
                .offset(x: imageOffset.width * -1)
                .blur(radius: abs(imageOffset.width / 5))
                .animation(.easeOut(duration: 1), value: imageOffset)
            
            //            MARK: IMAGE
            Image("character-1")
                .resizable()
                .scaledToFit()
                .opacity(isAnimating ? 1 : 0)
                .animation(.easeOut(duration: 1), value: isAnimating)
                .offset(x: imageOffset.width * 1.2, y: 0)
                .rotationEffect(.degrees(Double(imageOffset.width / 20)))
                .gesture(
                    DragGesture()
                        .onChanged({ gesture in
                            if(abs(imageOffset.width) <= 150) {
                                // gesture translation gives both the height and width propeties of the drag gesture
                                imageOffset = gesture.translation
                                
                                withAnimation(.linear(duration: 0.25)) {
                                    indicatorOpacity = 0
                                }
                            }
                        })
                        .onEnded {
                            _ in
                            imageOffset = .zero
                            
                            withAnimation(.linear(duration: 0.25)) {
                                indicatorOpacity = 1
                            }
                        }
                )
                .animation(.easeOut(duration: 1), value: imageOffset)
        }.onAppear(perform: {
            isAnimating = true
        })
        .overlay(
            //            MARK: OVERLAY ARROW BUTTON
            Image(systemName: "arrow.left.and.right.circle")
                .font(.system(size: 44, weight: .ultraLight))
                .foregroundColor(.white)
                .offset(y:20)
                .opacity(isAnimating ? 1:0)
                .animation(.easeOut(duration: 1).delay(2), value: isAnimating)
                .opacity(indicatorOpacity)
            , alignment: .bottom
        )
        
    }
}

struct OnboardingContent_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea()
            
            OnboardingContent()
        }
    }
}
