//
//  SF_CompanionApp.swift
//  SF Companion
//
//  Created by Charles Mariuzza on 01.06.25.
//

import SwiftUI
import SwiftData

@main
struct SF_CompanionApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Character.self
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
            MainNavigationView()
        }
        .modelContainer(sharedModelContainer)
    }
}
