//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 08.07.23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var selectedVideo: String
    var title: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: selectedVideo, fileFormat: "mp4")) {
                //                Text(title)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                ,
                alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(title, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {

        NavigationView {
            VideoPlayerView(selectedVideo: "lion", title: "Lion")
        }
    }
}
