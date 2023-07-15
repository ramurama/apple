//
//  PlayerImageView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 15.07.23.
//

import SwiftUI

struct PlayerImageView: View {
    var player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            
    }
}

struct PlayerImageView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerImageView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
