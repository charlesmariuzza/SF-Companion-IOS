//
//  CharacterManagementView.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 09.06.25.
//

import SwiftData
import SwiftUI

struct CharacterManagementView: View {

    @Environment(\.modelContext) private var modelContext
    @Query(sort: \Character.server, order: .forward)
    private var characterList: [Character]

    // State to show sheet
    @State var showAddSheet = false

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
                    Button {
                        showAddSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showAddSheet) {
                // Sheet where user can add new character to the list
                AddCharacterSheet(showSheet: $showAddSheet)
            }
        } detail: {
            Text("Select an item")
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
