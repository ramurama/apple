//
//  GalleryView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 28.06.23.
//

import SwiftUI

struct GalleryView: View {
    let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var selectedAnimal: String = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    //    MARK: SIMPLE GRID LAYOUT
    //    layout property with free grid items
    //    each of the grid item in this layout has a flexible cell size (a free-column layout)
    
    //        let gridLayout: [GridItem] = [
    //            GridItem(.flexible()),
    //            GridItem(.flexible()),
    //            GridItem(.flexible())
    //        ]
    
    //    MARK: EFFICIENT GRID DEFINITION
    //    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    // this line does the same as above - a free-column grid layout
    
    //    MARK: DYNAMIC GRID LAYOUT
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
        //        this will update the number of columns each time when we change the grid layout
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            // MARK: GRID
            VStack(alignment: .center, spacing: 30) {
                
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                // MARK: SLIDER
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn, perform: {
                        value in
                        gridSwitch()
                        hapticFeedback.impactOccurred()
                    })
                
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = animal.image
                            }
                            
                    }
                }
                .onAppear {
                    gridSwitch()
                }
                .animation(.easeOut)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 55)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
