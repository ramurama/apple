//
//  CenterModifier.swift
//  Africa
//
//  Created by Ramu Ramasamy on 11.07.23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

