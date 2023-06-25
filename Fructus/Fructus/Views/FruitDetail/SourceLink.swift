//
//  SourceLink.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 25.06.23.
//

import SwiftUI

struct SourceLink: View {
    var body: some View {
        //        GroupBox works as a VStack
        
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLink_Previews: PreviewProvider {
    static var previews: some View {
        SourceLink()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
