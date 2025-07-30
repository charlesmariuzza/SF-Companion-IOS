//
//  Character.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 09.06.25.
//

import Foundation
import SwiftData

@Model
class Character: Hashable {
    var id: UUID
    var name: String
    var server: String
    var characterClass: CharacterClass
    var tasks: [Task]

    init(
        id: UUID = UUID(),
        name: String,
        server: String,
        characterClass: CharacterClass,
        tasks: [Task] = [
            Task(type: .adventure),
            Task(type: .diceGame, maxUses: 10, currentUses: 0),
            Task(type: .arena, maxUses: 10, currentUses: 0)
        ]
    ) {
        self.id = id
        self.name = name
        self.server = server
        self.characterClass = characterClass
        self.tasks = tasks
    }
}
