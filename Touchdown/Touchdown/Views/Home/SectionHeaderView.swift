//
//  ProductsSectionHeaderView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import SwiftUI

struct SectionHeaderView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding()
    }
}

struct ProductsSectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView(title: "Helmets")
            .previewLayout(.sizeThatFits)
            
    }
}
