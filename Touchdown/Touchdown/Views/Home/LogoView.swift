//
//  LogoView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 14.07.23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Text("touch".uppercased())
                .font(.title2)
                .fontWeight(.heavy)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
                
            
            Text("down".uppercased())
                .font(.title2)
                .fontWeight(.heavy)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
