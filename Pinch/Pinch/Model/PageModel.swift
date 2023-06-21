//
//  PageModel.swift
//  Pinch
//
//  Created by Ramu Ramasamy on 21.06.23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
