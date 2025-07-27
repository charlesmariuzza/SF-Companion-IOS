//
//  AddCharacterSheet.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 10.06.25.
//

import SwiftData
import SwiftUI

struct AddCharacterSheet: View {

    @Environment(\.modelContext) var context

    @State var characterName: String = ""
    @State var serverName: String = ""
    @State var selectedClass: CharacterClass = .warrior

    // Needed to close sheet if new character was added
    @Environment(\.dismiss) private var dismiss

    var body: some View {

        VStack {
            HStack {
                Text("Neuen Charakter anlegen")
                    .font(.title)
                    .bold()
                Spacer()
            }.padding(.horizontal, 8)

            HStack {
                Picker("Klasse auswählen", selection: $selectedClass) {
                    ForEach(CharacterClass.allCases) { characterClass in
                        Text(characterClass.rawValue.capitalized)
                    }
                }
                .pickerStyle(.menu)

                Image(selectedClass.logoName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()

                Spacer()
            }

            TextField("Charaktername eingeben...", text: $characterName)
                .padding(.horizontal, 8)
                .textFieldStyle(.roundedBorder)

            TextField("Server eingeben...", text: $serverName)
                .padding(.horizontal, 8)
                .textFieldStyle(.roundedBorder)

            Button("Speichern") {
                context.insert(
                    Character(
                        name: characterName,
                        server: serverName,
                        characterClass: selectedClass
                    )
                )

                dismiss()
            }
            .buttonStyle(.borderedProminent)
            .padding()
            .foregroundStyle(.white)
        }
        .foregroundStyle(.black)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray.opacity(0.3))
        .presentationDetents([.medium, .height(350)])
    }
}

#Preview {
    AddCharacterSheet().modelContainer(
        for: Character.self,
        inMemory: true
    )
}
