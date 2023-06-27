//
//  SettingsLabel.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 27.06.23.
//

import SwiftUI

struct SettingsLabel: View {
    var label: String
    var icon: String
    
    var body: some View {
        HStack {
            Text(label.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: icon)
        }
    }
}

struct SettingsLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabel(label: "Fructus", icon: "info.circle")
            .preferredColorScheme(.dark)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
