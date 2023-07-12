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
        FooterView()
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
