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
    @Binding var showSheet: Bool

    var body: some View {

        VStack {
            HStack {
                Text("Neuen Charakter anlegen")
                    .font(.title)
                    .bold()
                Spacer()
            }.padding(.horizontal, 8)

            Picker("Klasse auswählen", selection: $selectedClass) {
                ForEach(CharacterClass.allCases) { characterClass in
                    Text(characterClass.rawValue.capitalized)
                }
            }
            .pickerStyle(WheelPickerStyle())

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

                showSheet = false
            }
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
        }
        .toFullscreenSheet()
        .presentationDetents([.large, .height(550)])
    }
}

#Preview {
    AddCharacterSheet(
        showSheet: .constant(true)
    ).modelContainer(for: Character.self, inMemory: true)
}
