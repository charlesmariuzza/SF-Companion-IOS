//
//  MainNavigationView.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 09.06.25.
//

import SwiftUI

struct MainNavigationView: View {
    var body: some View {
        VStack {
            TabView {
                Tab(
                    "Charaktere",
                    systemImage: "person.3.fill"
                ) {
                    CharacterManagementView()
                }
                Tab(
                    "Wiki",
                    systemImage: "book.fill"
                ) {
                    WikiListView()
                }
                Tab(
                    "Einstellungen",
                    systemImage: "gear"
                ) {
                    SettingsView()
                }
            }
        }
    }
}

#Preview {
    MainNavigationView()
        .modelContainer(for: Character.self, inMemory: true)
}
