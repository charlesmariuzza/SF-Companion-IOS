//
//  CharacterRowView.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 21.07.25.
//

import SwiftUI

struct CharacterRowView: View {
    let character: Character

    var body: some View {
        HStack {
            Image(character.characterClass.logoName)
                .resizable()
                .frame(width: 32, height: 32)
            Text(character.name)
            Text(character.server)
            Spacer()
        }.padding(4)
    }
}

#Preview {
    CharacterRowView(
        character: Character(
            name: "Test Char",
            server: "Test Server",
            characterClass: .mage
        )
    )
}
