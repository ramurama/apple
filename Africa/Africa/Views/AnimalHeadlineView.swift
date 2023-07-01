//
//  AnimalHeadlineView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI

struct AnimalHeadlineView: View {
    var name: String
    var headline: String
    
    
    var body: some View {
        
        Group {
            Text(name.uppercased())
                .font(.largeTitle)
                .foregroundColor(.primary)
                .fontWeight(.heavy)
                .background(
                    Color.accentColor
                        .frame(height: 6)
                        .offset(y: 24)
                )
            
            
            Text(headline)
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.leading)
            
            
        }
           
    }
}

struct AnimalHeadlineView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        AnimalHeadlineView(name: animals[0].name, headline: animals[0].headline)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
