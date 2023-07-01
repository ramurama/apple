//
//  WildnessHeaderView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI

struct AnimalDetailHeadingView: View {
    var icon: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 24))
                .foregroundColor(.accentColor)
            
            Text(text)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.primary)
        }
        .padding(.top, 30)
    }
}

struct AnimalDetailHeadingView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailHeadingView(icon: "photo.on.rectangle.angled", text: "Wildness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
