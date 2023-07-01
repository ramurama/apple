//
//  ListDetailView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI

struct ListDetailView: View {
    var animal: Animal
    
    var body: some View {
        
        ScrollView (.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                
                AnimalHeadlineView(name: animal.name, headline: animal.headline)
                
                AnimalDetailHeadingView(icon: "photo.on.rectangle.angled", text: "Wildness in Pictures")
                
                ImageGalleryView(images: animal.gallery)
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
            
        }
        
        
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        ListDetailView(animal: animals[0])
    }
}
