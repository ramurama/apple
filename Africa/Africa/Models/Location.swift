//
//  Location.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import Foundation


struct Location: Identifiable, Codable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
}
