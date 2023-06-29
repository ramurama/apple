//
//  ContentView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 28.06.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                CoverImageCarousel()
                
                VStack {
                  
                }.padding()
                
                Spacer()
            }
            .navigationBarTitle("Africa", displayMode: .large)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
