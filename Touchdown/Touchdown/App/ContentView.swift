//
//  ContentView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 12.07.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         // MARK: - FOOTER
        VStack(spacing: 0) {
            NavBarView()
                .background(.white)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            Spacer()
            
            FooterView()
                .padding(.horizontal)
        }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
