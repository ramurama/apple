//
//  TextExtension.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import Foundation
import SwiftUI

extension Text {
    
    func bold() -> some View {
        self.fontWeight(.bold)
    }
    
    
    func light() -> some View {
        self.fontWeight(.light)
    }
    
    func size(size: CGFloat) -> some View {
        self.font(.system(size: size))
    }
}
