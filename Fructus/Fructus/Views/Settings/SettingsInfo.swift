//
//  SettingsInfo.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 27.06.23.
//

import SwiftUI

struct SettingsInfo: View {
    var body: some View {
        HStack {
            Image("logo")
                .renderImageCorrectly()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .cornerRadius(10)
            
            Text("Most fruits are naturally low in fat, sodium and calories. None have cholestrol. Fruits are sources of many essential nutrients including potassium, dietary fiber, vitamins and much more.")
                .font(.footnote)
        }
    }
}

struct SettingsInfo_Previews: PreviewProvider {
    static var previews: some View {
        SettingsInfo()
            .preferredColorScheme(.dark)
            .padding()
    }
}
