//
//  TaskListItemView.swift
//  Devote
//
//  Created by Ramu Ramasamy on 23.07.23.
//

import SwiftUI

struct TaskListItemView: View {
    @Environment(\.managedObjectContext) var viewContext
    
    @ObservedObject var item: Item
    
    @Environment(\.colorScheme) var colorScheme
    
    var textColor: Color {
        item.isCompleted ? .pink : colorScheme == .dark ? .white : .black
    }
    
    var body: some View {
        Toggle(isOn: $item.isCompleted) {
            
            Text(item.task ?? "")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(textColor)
            
        }
        
        // objectWillChange is the publisher parameter subscribed to the observerd object
        // the action is performed every time the object is changed
        .onReceive(item.objectWillChange, perform: {
            _ in
            
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
        .toggleStyle(CheckboxStyle())
        
        
    }
}

// no sample data so no preview
