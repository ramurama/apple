//
//  DetailViewNavBar.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import SwiftUI

struct DetailViewNavBar: View {
    var body: some View {
        HStack(alignment: .center) {
            Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            })
        }
        .frame(height: 50)
        .padding(.vertical, 6)
        .padding(.horizontal, 4)
    }
        
}

struct DetailViewNavBar_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewNavBar()
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
