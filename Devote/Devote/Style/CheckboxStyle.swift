//
//  CheckboxStyle.swift
//  Devote
//
//  Created by Ramu Ramasamy on 23.07.23.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    @Environment(\.colorScheme) var colorScheme
    
    func makeBody(configuration: Configuration) -> some View {
        return HStack(alignment: .center, spacing: 10) {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(configuration.isOn ? .pink : colorScheme == .dark ? .white : .black)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            
            configuration.label

            Spacer()
        }
        
    }
}

struct CheckboxStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder label", isOn: .constant(true))
            .padding()
            .previewLayout(.sizeThatFits)
            .toggleStyle(CheckboxStyle())
    }
}
