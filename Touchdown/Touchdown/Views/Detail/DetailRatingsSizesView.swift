//
//  DetailRatingsSizesView.swift
//  Touchdown
//
//  Created by Ramu Ramasamy on 18.07.23.
//

import SwiftUI

struct DetailRatingsSizesView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack {
            // ratings
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGrey)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) {
                        num in
                        
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                                .frame(width: 28, height: 28)
                                .background(colorGrey.cornerRadius(5))
                        })
                        
                    }
                }
            }
            
            Spacer()
            
            // sizes
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGrey)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(sizes, id: \.self) {
                        size in
                        
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGrey)
                                .frame(width: 28, height: 28)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGrey, lineWidth: 2)
                                )
                        })
                        
                    }
                }
            }
        }
        
    }
}

struct DetailRatingsSizesView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRatingsSizesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
