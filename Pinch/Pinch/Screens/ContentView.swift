//
//  ContentView.swift
//  Pinch
//
//  Created by Ramu Ramasamy on 19.06.23.
//

import SwiftUI

struct ContentView: View {
    //    MARK: VARIABLES
    
    @State private var isAnimating: Bool = false
    
    @State private var imageScale: CGFloat = 1
    
    @State private var imageOffset: CGSize = .zero
    
    @State private var isDrawerOpen: Bool = false
    
    let pages: [Page] = pagesData
    
    @State private var currentPageId: Int = 1
    
    
    //    MARK: - HANDLERS
    
    func toggleDrawer() {
        isDrawerOpen.toggle()
    }
    
    func zoomImage() {
        return withAnimation(.spring()) {
            imageScale = 5
        }
    }
    
    func resetImage() {
        return withAnimation(.spring()) {
            imageOffset = .zero
            imageScale = 1
        }
    }
    
    func onTapImage() {
        if imageScale == 1 {
            zoomImage()
        } else {
            resetImage()
        }
    }
    
    func scaleImageByOne() {
        return withAnimation(.spring()) {
            if(imageScale != 5) {
                imageScale += 1
            }
        }
    }
    
    func descaleImageByOne() {
        return withAnimation(.spring()) {
            if(imageScale != 1) {
                imageScale -= 1
            }
            
            if(imageScale == 1) {
                imageOffset = .zero
            }
        }
    }
    
    func currentPage() -> String {
        return pages[currentPageId - 1].imageName
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color.clear
                
                //                MARK: - PAGE IMAGE
                Image(currentPage())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x: imageOffset.width, y: imageOffset.height)
                    .scaleEffect(imageScale)
                    .onTapGesture(count: 2, perform: {
                        onTapImage()
                    })
                    .gesture(
                        DragGesture()
                            .onChanged({ gesture in
                                withAnimation(.linear(duration: 1)) {
                                    imageOffset = gesture.translation
                                }
                            })
                            .onEnded({ _ in
                                if(imageScale <= 1) {
                                    resetImage()
                                }
                            })
                    )
                //                MARK: - MAGINIFICATION
                    .gesture(
                        MagnificationGesture()
                            .onChanged({ value in
                                withAnimation(.linear(duration: 1)) {
                                    if imageScale >= 1 && imageScale <= 5 {
                                        imageScale = value
                                    } else if imageScale > 5 {
                                        imageScale = 5
                                    }
                                }
                            })
                            .onEnded({
                                _ in
                                if imageScale > 5 {
                                    imageScale = 5
                                } else if imageScale <= 1 {
                                    resetImage()
                                }
                            })
                    )
                
            } // : ZStack
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            })
            //            MARK: - INFO PANEL
            .overlay(InfoPanelView(scale: imageScale, offset: imageOffset).padding(.horizontal).padding(.top, 30), alignment: .top)
            .overlay(ActionButtonView(onTapZoomOut: {
                descaleImageByOne()
            }, onTapReset: {
                resetImage()
            }, onTapZoomIn: {
                scaleImageByOne()
            }).padding(.horizontal).padding(.bottom, 40), alignment: .bottom)
            //            MARK: - DRAWER
            .overlay(Drawer(isDrawerOpen: isDrawerOpen, onTapDrawer: {
                toggleDrawer()
            }, onTapThumbnail: { pageId in
                currentPageId = pageId
            }).padding(.top, UIScreen.main.bounds.height / 18), alignment: .topTrailing)
            
            
            
        } // : NavigationView
        .navigationViewStyle(.stack)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
