//
//  FructusApp.swift
//  Fructus
//
//  Created by Ramu Ramasamy on 24.06.23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboardingDone") var isOnboadringDone: Bool = false
    
    var body: some Scene {
        WindowGroup {

            if isOnboadringDone {
                ContentView(fruits: fruitsData)
            } else {
                OnBoardingView()
            }
        }
    }
}
