//
//  ContentView.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    FruitListItem(fruit: fruit)
                        
                }
            }
            .navigationTitle("Fruits")
            .padding(.horizontal, -18)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 14")
    }
}
