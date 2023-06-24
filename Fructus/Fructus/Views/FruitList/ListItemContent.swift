//
//  ListItemContent.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

struct ListItemContent: View {
    var title: String
    var headline: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(title)
                    .font(.title2)
                
                Spacer()
            }
                
            
            HStack {
                Text(headline)
                    .fontWeight(.light)
                    .size(size: 14)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
        
        }
        
    }
}

struct ListItemContent_Previews: PreviewProvider {
    static var previews: some View {
        ListItemContent(title: fruitsData[0].title, headline: fruitsData[1].headline)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
