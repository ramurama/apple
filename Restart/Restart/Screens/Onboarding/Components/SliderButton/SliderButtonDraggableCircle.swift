//
//  SliderButtonDraggableCircle.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct SliderButtonDraggableCircle: View {
    
    @State var buttonOffset: CGFloat
    
    @State var buttonWidth: Double
    
    @State var action: () -> ()
    
    private let hapticFeedback = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Capsule()
                .fill(Color("ColorRed"))
                .frame(width: buttonOffset + 80)
            
            Spacer()
        }
        
        HStack {
            ZStack {
                Circle()
                    .fill(Color("ColorRed"))
                
                
                Circle()
                    .fill(.black.opacity(0.15))
                    .padding(8)
                
                Image(systemName: "chevron.right.2").font(.system(size: 24, weight: .bold))
            }.frame(width: 80, height: 80, alignment: .center)
                .foregroundColor(.white)
                .offset(x: buttonOffset)
                .gesture(
                    
                    DragGesture().onChanged({ gesture in
                        
                        // width > 0 actually checks if the drag is started from left to right
                        if(gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80) {
                            buttonOffset = gesture.translation.width
                        }
                    }).onEnded({ _ in
                        
                        if(buttonOffset > buttonWidth / 2) {
                            buttonOffset = buttonWidth - 80
                            
                            hapticFeedback.notificationOccurred(.success)
                            action()
                        } else {
                            hapticFeedback.notificationOccurred(.warning)
                            buttonOffset = 0
                        }
                        
                    })
                )
            
            Spacer()
        }
    }
}

struct SliderButtonDraggableCircle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea()
            
            SliderButtonDraggableCircle(buttonOffset: 30, buttonWidth: 80, action: {
                //            do something here
            })
        }
    }
}
