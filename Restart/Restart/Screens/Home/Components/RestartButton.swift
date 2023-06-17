//
//  RestartButton.swift
//  Restart
//
//  Created by Ramu Ramasamy on 17.06.23.
//

import SwiftUI

struct RestartButton: View {
    
    @State var action: () -> ()
    
    var body: some View {
        Button(action: {
            action()
        }, label:  {
            Image(systemName: "arrow.triangle.2.circlepath.circle.fill").imageScale(.large)
            
            Text("Restart").font(.title3).fontWeight(.bold)
        }).buttonStyle(.borderedProminent).buttonBorderShape(.capsule).controlSize(.large)
    }
}

struct RestartButton_Previews: PreviewProvider {
    static var previews: some View {
        RestartButton(action: {
            //  do something
        })
    }
}
