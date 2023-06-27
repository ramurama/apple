//
//  SettingsView.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 27.06.23.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboardingDone") var isOnboardingDone: Bool = false
    
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(label: SettingsLabel(label: "Fructus", icon: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        SettingsInfo()
                    }
                    
                    GroupBox(label: SettingsLabel(label: "Customisation", icon: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .font(.footnote)
                            .padding(.vertical, 8)
                        // sometimes the long text is truncated by the rendering system that is why priority is added here
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboardingDone) {
                            if isOnboardingDone {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                        )
                        .cornerRadius(8)
                    }
                    
                    
                    GroupBox(label: SettingsLabel(label: "Application", icon: "apps.iphone")) {
                        
                        SettingsRow(title: "Developer", content: "Ramu Ramasamy")
                        SettingsRow(title: "Designer", content: "Robert Petras")
                        SettingsRow(title: "Compatibility", content: "iOS 15")
                        SettingsRow(title: "Website", linkLabel: "Ramu Ramasamy DE", linkDestination: "ramuramasamy.de")
                    }
                }
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                
            }
            .padding()
            
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
