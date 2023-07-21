//
//  ContentView.swift
//  Devote
//
//  Created by Ramu Ramasamy on 19.07.23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var task: String = ""
    
    private var isButtonDisabled: Bool {
        // computed property that checks if the string is empty and holds the value in the boolean field
        task.isEmpty
    }
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        NavigationView {
            VStack {
                
                VStack(spacing: 16) {
                    TextField("Task", text: $task)
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
                        Spacer()
                    })
                    .padding()
                    .background(isButtonDisabled ? Color.gray : Color("background-color"))
                    .font(.headline)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .disabled(isButtonDisabled)
                    
                }
                .padding()
                
                List {
                    ForEach(items) { item in
                        NavigationLink {

                            Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                            
                        } label: {
                            VStack(alignment: .leading, spacing: 8) {
                                Text(item.task ?? "")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                
                                Text(item.timestamp!, formatter: itemFormatter)
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(.inset)
                
            }
            .navigationBarTitle("Daily tasks", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            
        }
    }
    
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
