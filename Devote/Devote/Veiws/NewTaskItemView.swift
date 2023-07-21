//
//  NewTaskItemView.swift
//  Devote
//
//  Created by Ramu Ramasamy on 21.07.23.
//

import SwiftUI

struct NewTaskItemView: View {
    
    @State var task: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var isShowing: Bool
    
    private var isButtonDisabled: Bool {
        // computed property that checks if the string is empty and holds the value in the boolean field
        task.isEmpty
    }
    
    // MARK: - ADD ITEM
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.id = UUID()
            newItem.isCompleted = false
            newItem.task = task
            
            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
        
        // reset the text input
        task = ""
        hideKeyBoard()
        isShowing = false
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                TextField("New Task", text: $task)
                    .foregroundColor(.pink)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .padding()
                    .background(
                        Color(.systemGray6)
                    )
                    .cornerRadius(10)
                
                Button(action: {
                    addItem()
                }, label: {
                    Spacer()
                    Text("save".uppercased())
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                    Spacer()
                })
                .padding()
                .background(isButtonDisabled ? Color.blue : Color("background-color"))
                .font(.headline)
                .foregroundColor(.white)
                .cornerRadius(10)
                .disabled(isButtonDisabled)
                
            }
            .padding(.horizontal)
            .padding(.vertical, 20)
            .background(colorScheme == .dark ? Color.black : Color.white)
            .cornerRadius(16)
            .frame(maxWidth: 640)
        }
        .padding()
    }
}

struct NewTaskItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskItemView(isShowing: .constant(true))
            .background(Color.gray.edgesIgnoringSafeArea(.all))
    }
}
