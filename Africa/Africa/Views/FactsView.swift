//
//  FactsView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI

struct FactsView: View {
    var facts: [String]
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(facts, id: \.self) {
                    fact in
                    
                    Text(fact)
                        .font(.body)
                        .foregroundColor(.primary)
                    
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
        .frame(width: UIScreen.main.bounds.width * 0.95, height: 200)
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        FactsView(facts: animals[0].fact)
            
    }
}
