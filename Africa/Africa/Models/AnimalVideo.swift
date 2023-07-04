//
//  AnimalVideo.swift
//  Africa
//
//  Created by Ramu Ramasamy on 04.07.23.
//

import Foundation

struct AnimalVideo: Identifiable, Codable {
    let id: String
    let name: String
    let headline: String
    
    //    computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
