//
//  ContentView.swift
//  Devote
//
//  Created by Ramu Ramasamy on 19.07.23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var showNewTaskForm: Bool = false
    
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    var body: some View {
        
        ZStack {
            // MARK: - MAIN VIEW
            VStack {
                // MARK: - HEADER
                HeaderView()
                
                Spacer(minLength: 80)
                
                // MARK: - NEW TASK BUTTON
                Button(action: {
                    showNewTaskForm = true
                }, label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                    
                    Text("New Task")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                })
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical)
                .background(
                    backgroundGradient
                )
                .clipShape(Capsule())
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 0, y: 4)
                
                
                // MARK: - TASKS
                List {
                    ForEach(items) { item in
                        TaskListItemView(item: item)
                            .padding(.vertical, 6)
                    }
                    .onDelete(perform: deleteItems)
                }
                
                // add these both lines to hide the backdround color of the list
                .scrollContentBackground(.hidden)
                .background(Color.clear)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 12)
                .padding(.vertical, 0)
                // maximise the list on iPad devices
                .frame(maxWidth: 640)
            }
            
            
            // MARK: - NEW TASK ITEM
            
            if showNewTaskForm {
                // visual separation using a blank view
                BlankView()
                    .onTapGesture {
                        withAnimation() {
                            showNewTaskForm = false
                        }
                    }
                NewTaskItemView(isShowing: $showNewTaskForm)
            }
        }
        .onAppear {
            UITableView.appearance().backgroundColor = UIColor.clear
        }
        
        .background(BackgroundImageView())
        .background(backgroundGradient.ignoresSafeArea(.all))
        
        
        
    }
    
    
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)
            
            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
