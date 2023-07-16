//
//  CustomNavbarView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 14.07.23.
//

import SwiftUI

struct NavBarView: View {
    
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                    .fontWeight(.medium)
            })
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x:0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated = true
                    }
                }
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                    .fontWeight(.medium)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14)
                        .offset(x:10, y: -10)
                }
            })
        }
        .frame(height: 50)
        .padding(.vertical, 6)
        .padding(.horizontal, 4)
    }
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
            .previewLayout(.sizeThatFits)
            
    }
}
