//
//  PlayerCarouselView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 15.07.23.
//

import SwiftUI

struct PlayerCarouselView: View {
    
    var body: some View {
        TabView {
            ForEach(players) {
                player in
                
                PlayerImageView(player: player)
                    .padding(.horizontal, 15)
                
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
    }
}

struct PlayerCarouselView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        PlayerCarouselView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
        
    }
}
