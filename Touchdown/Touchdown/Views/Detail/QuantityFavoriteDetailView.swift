//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    @State var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 3) {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
                    .foregroundColor(.black)
                    .font(.system(size: 24))
            })
            
            Text("\(counter)")
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                counter += 1
            }, label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(.black)
                    .font(.system(size: 24))
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
                    .font(.system(size: 24))
            })
        }
        .padding(.vertical)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
