//
//  Persistence.swift
//  Devote
//
//  Created by Ramu Ramasamy on 19.07.23.
//

import CoreData

struct PersistenceController {
    // MARK: - PERSISTENT CONTROLLER
    static let shared = PersistenceController()

// MARK: - PERSISTENT CONTAINER
    let container: NSPersistentContainer

    // MARK: - INITIALIATION
    // it is important to configure the persistence type
    // in memory - all the changes will be destroyed when the app is closed
    // in memory is useful for testing and using in previews
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Devote")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    // MARK: - PREVIEW
    // test configuration soley for SwiftUI previews
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for i in 0..<1 {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = "Sample task No \(i)"
            newItem.isCompleted = false
            newItem.id = UUID()
        }
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
}
