//
//  SettingsRow.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 27.06.23.
//

import SwiftUI

struct SettingsRow: View {
    var title: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)
            
            
            HStack {
                Text(title)
                    .foregroundColor(.gray)
                Spacer()
                
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
            
            
        }
    }
}

struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRow(title: "Developer", content: "Ramu Ramasamy")
            
            
            SettingsRow(title: "Website", linkLabel: "ramuramasamy.de", linkDestination: "ramuramasamy.de")
        }
            .preferredColorScheme(.dark)
            .padding()
            
    }
}
