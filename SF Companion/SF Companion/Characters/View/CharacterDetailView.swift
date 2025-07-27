//
//  CharacterDetailView.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 21.07.25.
//

import SwiftUI

struct CharacterDetailView: View {
    let character: Character

    var body: some View {
        VStack(alignment: .center) {
            Text("Hier werden Details über den Charakter angezeigt.")
                .padding(10)
                .multilineTextAlignment(.center)
        }
        .navigationTitle(character.name + " - " + character.server)
    }
}

#Preview {
    NavigationStack {
        CharacterDetailView(
            character: Character(
                name: "Test Char",
                server: "Test Server",
                characterClass: .mage
            )
        )
    }
}
