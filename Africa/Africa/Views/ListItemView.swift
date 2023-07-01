//
//  ListItemView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI

struct ListItemView: View {
    var image: String
    var title: String
    var headline: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 90 , height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            
            VStack (alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(
            image: "lion", title: "Lion", headline: "The world's most social felines, lions roam the savannas and grasslands of the African continent, hunting cooperatively and raising cubs in prides. "
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
