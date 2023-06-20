//
//  ActionIconView.swift
//  Pinch
//
//  Created by Ramu Ramasamy on 20.06.23.
//

import SwiftUI

struct ActionIconView: View {
    var icon: String
    var action: () -> ()
    
    var body: some View {
        
        Button {
            action()
        } label: {
            Image(systemName: icon)
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
        }
    }
}

struct ActionIconView_Previews: PreviewProvider {
    static var previews: some View {
        ActionIconView(icon: "minus.magnifyingglass", action: {})
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
