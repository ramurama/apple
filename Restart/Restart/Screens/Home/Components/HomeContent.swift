//
//  HomeContent.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct HomeContent: View {
    var body: some View {
        VStack(spacing: 30) {
            ZStack {
                CircleGroupView(circleColor: .gray, circleOpacity: 0.1)
                    
                
                Image("character-2").resizable().scaledToFit()
            }
            
            
            
            Text("""
                The time that leads to mastery is
                dependent on the intensity of our focus.
                """).font(.title3).fontWeight(.light).foregroundColor(.gray).multilineTextAlignment(.center)
            
        }.padding(20)
    }
}

struct HomeContent_Previews: PreviewProvider {
    static var previews: some View {
        HomeContent()
    }
}
