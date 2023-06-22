//
//  CardView.swift
//  Hike
//
//  Created by Ramu Ramasamy on 21.06.23.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int  = 1
    @State private var randomNumber: Int = 1
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while imageNumber == randomNumber
        
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                HeaderView(buttonAction: {
                    
                })
                
                ZStack {
                    
                    Circle()
                        .fill(LinearGradient(colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 256, height: 256)
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 1), value: imageNumber)
                }
                
                ExploreButton(action: {
                    randomImage()
                })
            }
        }
        .frame(width: 320, height: 570)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
