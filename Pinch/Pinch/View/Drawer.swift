//
//  Drawer.swift
//  Pinch
//
//  Created by Ramu Ramasamy on 20.06.23.
//

import SwiftUI

struct Drawer: View {
    @State private var isAnimating: Bool = false
    
    var isDrawerOpen: Bool
    var onTapDrawer: () -> ()
    var onTapThumbnail: (_ pageId: Int) -> ()
    
    var body: some View {
        
        HStack {
            Image(systemName: isDrawerOpen ? "chevron.compact.right" : "chevron.compact.left")
                .resizable()
                .scaledToFit()
                .frame(height: 40)
                .padding(.horizontal, 4)
                .foregroundStyle(.secondary)
                
                .onTapGesture {
                    withAnimation(.easeOut(duration: 0.2)) {
                        onTapDrawer()
                    }
                }
            
            
            ForEach(pagesData) {
                item in
                
                Image(item.thumbnailName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .cornerRadius(5)
                    .onTapGesture {
                        withAnimation(.linear(duration: 0.2)) {
                            onTapThumbnail(item.id)
                            onTapDrawer()
                        }
                    }
            }
            
            Spacer()
        }
        .onAppear(perform: {
            isAnimating = true
        })
        .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        .background(.ultraThinMaterial)
        .cornerRadius(12)
        .frame(width: 260)
        .opacity(isAnimating ? 1 : 0)
        .offset(x: isDrawerOpen ? 50 : 230)
        
        
    }
}

struct Drawer_Previews: PreviewProvider {
    static var previews: some View {
        Drawer(isDrawerOpen: true, onTapDrawer: {}, onTapThumbnail: {_ in})
            .preferredColorScheme(.dark)
    }
}
