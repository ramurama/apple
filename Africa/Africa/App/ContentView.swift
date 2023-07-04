//
//  ContentView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 28.06.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        NavigationView {
            
            
            List {
                CoverImageCarousel()
                    .listRowInsets(
                        EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
                    )
                
                ForEach(animals) { animal in
                    NavigationLink(
                        destination: ListDetailView(animal: animal),
                        label: {
                            ListItemView(
                                image: animal.image, title: animal.name, headline: animal.headline
                            )
                        })
                    
                }
                
            }
            .navigationBarTitle("Africa", displayMode: .large)
            .listStyle(.inset)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
