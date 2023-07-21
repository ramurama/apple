//
//  Constants.swift
//  Devote
//
//  Created by Ramu Ramasamy on 19.07.23.
//

import SwiftUI

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

let backgroundGradient: LinearGradient = LinearGradient(colors: [Color.pink, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
