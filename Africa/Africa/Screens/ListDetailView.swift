//
//  ListDetailView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI

struct ListDetailView: View {
    var animal: Animal
    
    @State private var showFullDescription: Bool = false
    
    var body: some View {
        
        ScrollView (.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                
                VStack(spacing: 20) {
                    AnimalHeadlineView(name: animal.name, headline: animal.headline)
                    
                    Group {
                        HeadingView(icon: "photo.on.rectangle.angled", text: "Wildness in Pictures")
                        
                        ImageGalleryView(images: animal.gallery)
                    }
                    
                    Group {
                        HeadingView(icon: "questionmark.circle", text: "Did you know?")
                        
                        FactsView(facts: animal.fact)
                        
                    }
                    
                    
                    Group {
                        HeadingView(icon: "info.circle", text: "All about \(animal.name)")
                        
                        Text(animal.description)
                            .font(.body)
                            .foregroundColor(.primary)
                            .multilineTextAlignment(.leading)
                            .lineLimit(showFullDescription ? nil : 10)
                            .onTapGesture {
                                showFullDescription.toggle()
                            }
                    }
                    
                    
                    Group {
                        HeadingView(icon: "map", text: "National Parks")
                        InsetMapView()
                    }
                    

                    
                    Group {
                        HeadingView(icon: "books.vertical", text: "Learn more")
                        
                        SourceLink(sourceName: "Wikipedia", sourceLink: animal.link, linkLabel: animal.name)
                    }
                }
                .padding()
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
