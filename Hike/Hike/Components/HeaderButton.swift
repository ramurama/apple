//
//  HeaderButton.swift
//  Hike
//
//  Created by Ramu Ramasamy on 22.06.23.
//

import SwiftUI

struct HeaderButton: View {
    var gradient: LinearGradient
    var action: () -> ()
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            
            ZStack {
                Circle()
                    .stroke(gradient, lineWidth: 5)

                Image(systemName: "figure.hiking")
                    .foregroundStyle(gradient)
                    .font(.system(size: 30))
                    .fontWeight(.black)
            }
            .frame(width: 58, height: 58)
        })
    }
}

struct HeaderButton_Previews: PreviewProvider {
    static var previews: some View {
        HeaderButton(gradient: LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom), action: {
            print("button pressed")
        })
    }
}
