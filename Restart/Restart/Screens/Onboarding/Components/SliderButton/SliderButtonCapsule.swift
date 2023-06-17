//
//  SlidetButtonCapsule.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct SliderButtonCapsule: View {
    
    var body: some View {
        
        
        Capsule()
            .fill(.white.opacity(0.2))
        
        Capsule()
            .fill(.white.opacity(0.2))
            .padding(8)
        
        
        Text("Get Started")
            .font(.system(.title3, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .offset(x: 20)
        
    }
}

struct SliderButtonCapsule_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea()
            
            ZStack {
                SliderButtonCapsule()
            }.frame(height: 80).padding(20)
        }
    }
}
