//
//  ActionButtonView.swift
//  Pinch
//
//  Created by Ramu Ramasamy on 20.06.23.
//

import SwiftUI

struct ActionButtonView: View {
    var onTapZoomOut: () -> ()
    var onTapReset: () -> ()
    var onTapZoomIn: () -> ()
    
    var body: some View {
        HStack(spacing: 15) {
            ActionIconView(icon: "minus.magnifyingglass", action: onTapZoomOut)
                        
            ActionIconView(icon: "arrow.up.left.and.down.right.magnifyingglass", action: onTapReset)
            
            ActionIconView(icon: "plus.magnifyingglass", action: onTapZoomIn)
            
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView(onTapZoomOut: {}, onTapReset: {}, onTapZoomIn:{})
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
