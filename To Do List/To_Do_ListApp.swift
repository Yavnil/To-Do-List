//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by Sam Yavnilovitch on 8/1/23.
//

import SwiftUI

@main
struct To_Do_ListApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
