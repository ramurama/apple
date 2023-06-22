//
//  HeaderView.swift
//  Hike
//
//  Created by Ramu Ramasamy on 22.06.23.
//

import SwiftUI

struct HeaderView: View {
    let gradient = LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
    
    var action: () -> ()
    
    var body: some View {
        VStack(spacing: 10) {
            HStack() {
                Text("Hiking")
                    .font(.system(size: 55))
                    .fontWeight(.heavy)
                    .foregroundStyle(
                        gradient
                    )
                
                Spacer()
                
                HeaderButton(gradient: gradient, action: {
                    action()
                })
                
            }
            
            Text("Fun and enjoyable outdoor acticity for friends and families.")
                .multilineTextAlignment(.leading)
                .font(.body.italic())
                .fontWeight(.medium)
                .foregroundColor(.customGrayMedium)
            
            
        }
        .padding(22)
        .frame(width: 300)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(action: {
            print("button pressed")
        })
    }
}
