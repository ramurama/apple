//
//  ContentView.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit]
    
    @State private var isSettingsOpen: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    
                    NavigationLink(
                        destination: FruitDetailView(fruit: fruit),
                        label: {
                            FruitListItem(fruit: fruit)
                        }
                    )
                }
            }
            .navigationBarTitle(Text("Fruits"), displayMode: .large)
            .navigationBarItems(trailing:
                Button(action: {
                    isSettingsOpen = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }).sheet(isPresented: $isSettingsOpen) {
                    SettingsView()
                }
            )
            .padding(.horizontal, -18)
            
        }
        //        this is needed for iPad
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 14")
    }
}
