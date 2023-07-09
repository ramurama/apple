//
//  Location.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import Foundation
import MapKit


struct Location: Identifiable, Codable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    //    computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
