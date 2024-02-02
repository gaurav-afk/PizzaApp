//
//  Gaurav_PizzaApp.swift
//  Gaurav_Pizza
//
//  Created by Gaurav Rawat on 2024-02-02.
//

import SwiftUI
import SwiftData

@main
struct Gaurav_PizzaApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
