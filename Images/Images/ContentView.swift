//
//  ContentView.swift
//  Images
//
//  Created by Ramu Ramasamy on 15.06.23.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self.resizable().scaledToFit()
    }
    
    func iconModifier() -> some View {
        self.imageModifier()
            .frame(maxHeight: 130)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    
    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        VStack {
            
            
            Text("RAMU")
                .font(.system(size: 100))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(
                        colors: [.pink, .purple, .blue],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
            
            //            AsyncImage(url: URL(string: imageUrl)) {
            //                image in image.imageModifier()
            //            } placeholder: {
            //                Image(systemName: "photo.circle.fill").iconModifier()
            //            }.padding(40)
            
            // the type is unknown here, hence the compiler does not know the origin of spring function
            // let animation: = .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25)
            
            // here the type is known so no error
            let animation: Animation = .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25)
            let transaction = Transaction(animation: animation)
            
            AsyncImage(url: URL(string: imageUrl), transaction: transaction ) {
                phase in switch phase {
                case .success(let image):
                    image.imageModifier()
                    //                        .transition(.move(edge: .bottom))
                    //                        .transition(.slide)
                        .transition(.scale)
                case .failure(_):
                    Image(systemName: "ant.circle.fill").iconModifier()
                case .empty:
                    Image(systemName: "photo.circle.fill").iconModifier()
                    
                @unknown default:
                    ProgressView()
                }
            }.padding(40)
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
