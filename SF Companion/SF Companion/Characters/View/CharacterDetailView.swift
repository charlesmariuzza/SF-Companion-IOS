//
//  CharacterDetailView.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 21.07.25.
//

import SwiftUI

struct CharacterDetailView: View {
    @State var character: Character

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            if character.tasks.isEmpty {
                Text("Hier werden Details über den Charakter angezeigt.")
                    .padding(10)
                    .multilineTextAlignment(.center)
            } else {
                ForEach($character.tasks) { task in
                    TaskRowView(task: task)
                }
            }
        }
        .navigationTitle(character.name + " - " + character.server)
    }
}

#Preview {
    NavigationStack {
        CharacterDetailView(
            character:
                Character(
                    name: "Test Char",
                    server: "Test Server",
                    characterClass: .mage
                )
            )
    }
}
