//
//  ImageExtension.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import Foundation
import SwiftUI

extension Image {
    func renderImageCorrectly() -> some View {
        self.resizable()
            .scaledToFit()
    }
}
