//
//  CharacterManagementView.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 09.06.25.
//

import SwiftUI
import SwiftData

struct CharacterManagementView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \Character.server, order: .forward)
    private var characterList: [Character]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(characterList) { character in
                    NavigationLink {
                        Text("\(character.name)")
                        Text("\(character.server)")
                        Text("\(character.characterClass.rawValue)")
                    } label: {
                        Text("\(character.name)")
                        Text("\(character.server)")
                        Text("\(character.characterClass.rawValue)")
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newCharacter = Character(name: "Lyandara", server: "EU 17", characterClass: .paladin)
            modelContext.insert(newCharacter)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(characterList[index])
            }
        }
    }
}

#Preview {
    CharacterManagementView()
        .modelContainer(for: Character.self, inMemory: true)
}
