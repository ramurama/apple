//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 10.07.23.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 12...16)
    
    @State private var isAnimating: Bool = false
    
    
    //    MARK: - RANDOM COORDINATE
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    //    MARK: - RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    //    MARK: -RANDOM SCALE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    //    MARK: - RANDOM SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    
    //    MARK: - RANDOM DELAY
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    
    var body: some View {
        // GeometryReader gives access to the size and position in the parent view
        GeometryReader { geometry in
            ZStack {
                
                // Rendering this complex animation is power consuming and therefore a drawingGroup is used.
                // drawingGroup is from CoreAnimation framework of Swift that provides us out of the box performance optimisations for rendering animations
                ForEach(0...randomCircle, id: \.self) {
                    item in
                    
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .animation(.interpolatingSpring(stiffness: 0.5, damping: 0.5).repeatForever().speed(randomSpeed()).delay(randomDelay()) )
                        .onAppear {
                            isAnimating = true
                        }
                }
                
            }
            .drawingGroup()
            // behind the scenes this function is powered by the Apple's Metal framework that executes this animation on the device's GPU
        }
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
