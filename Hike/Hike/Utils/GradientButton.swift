//
//  GradientButton.swift
//  Hike
//
//  Created by Ramu Ramasamy on 22.06.23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    private let gradientIdeal = LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
    
    private let gradientPressed = LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ? gradientPressed : gradientIdeal
            )
            .cornerRadius(50)
    }
}
