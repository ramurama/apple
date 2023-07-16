//
//  ProductsSectionHeaderView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 16.07.23.
//

import SwiftUI

struct ProductsSectionHeaderView: View {
    var body: some View {
        HStack {
            Text("Helmets")
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        }
    }
}

struct ProductsSectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsSectionHeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
