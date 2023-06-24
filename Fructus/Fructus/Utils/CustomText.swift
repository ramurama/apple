//
//  CustomText.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import Foundation
import SwiftUI

struct CustomTextStyle: Text {
    func makeBody(configuration: Configuration) -> some View {
            configuration
                .foregroundColor(.white)
                .fontWeight(.light)
        }
}
