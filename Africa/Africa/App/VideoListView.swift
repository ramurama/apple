//
//  VideoListView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 28.06.23.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [AnimalVideo] = Bundle.main.decode("videos.json")
    
    let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(destination: VideoPlayerView(selectedVideo: video.id, title: video.name), label: {
                        VideoListItemView(video: video)
                            .padding(.vertical, 4)
                    })
                }
            }
            .navigationBarTitle("Videos", displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                videos.shuffle()
                hapticFeedback.impactOccurred()
            }, label: {
                Image(systemName: "arrow.2.squarepath")
            }))
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
