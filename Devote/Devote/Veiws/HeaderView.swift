//
//  HeaderView.swift
//  Devote
//
//  Created by Ramu Ramasamy on 23.07.23.
//

import SwiftUI

struct HeaderView: View {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var body: some View {
    
        
        HStack(alignment: .center, spacing: 10) {
            Text("Devote")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            Spacer()
            
            EditButton()
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
            .padding(.vertical, 2)
            .padding(.horizontal, 15)
            .background(Capsule().stroke(lineWidth: 2).foregroundColor(.white))
            
            Button(action: {
                isDarkMode.toggle()
            }, label: {
                Image(systemName: isDarkMode ? "moon.circle.fill" : "moon.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .semibold, design: .rounded))
            })
        }
        .padding()
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
