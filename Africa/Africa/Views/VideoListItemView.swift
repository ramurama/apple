//
//  VideoListItem.swift
//  Africa
//
//  Created by Ramu Ramasamy on 04.07.23.
//

import SwiftUI

struct VideoListItemView: View {
    let video: AnimalVideo
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 100)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                
                Image(systemName: "play.circle")
                    .foregroundColor(.primary)
                    .font(.system(size: 40))
            }
            
            VStack (alignment: .leading, spacing: 10) {
                Text(video.name)
                    .foregroundColor(.accentColor)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text(video.headline)
                    .foregroundColor(.primary)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
        .frame(height: 100)
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [AnimalVideo] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
