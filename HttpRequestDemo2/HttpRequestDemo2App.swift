//
//  HttpRequestDemo2App.swift
//  HttpRequestDemo2
//
//  Created by Vincent Salinas on 7/13/22.
//

import SwiftUI

@main
struct HttpRequestDemo2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
