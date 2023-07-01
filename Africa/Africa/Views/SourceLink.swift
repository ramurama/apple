//
//  SourceLink.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI

struct SourceLink: View {
    
    var sourceName: String
    var sourceLink: String
    var linkLabel: String
    
    var body: some View {
        GroupBox {
            HStack {
                Group {
                    Image(systemName: "globe")
                        .font(.system(size: 18))
                        .foregroundColor(.primary)
                    
                    Text(sourceName)
                        .font(.body)
                        .foregroundColor(.primary)
                    
                }
                
                Spacer()
                
                Link(destination: URL(string: sourceLink)!, label: {
                    Group {
                        Image(systemName: "arrow.up.right.square")
                        
                        Text(linkLabel)
                            .foregroundColor(.accentColor)
                    }
                })
            }
        }
        
    }
}

struct SourceLink_Previews: PreviewProvider {
    static var previews: some View {
        SourceLink(
            sourceName: "Wikipedia", sourceLink: "https://wikipedia.com", linkLabel: "Wiki"
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
