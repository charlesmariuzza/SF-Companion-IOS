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
    
    init (id: UUID = UUID(), name: String, server: String, characterClass: CharacterClass) {
        self.id = id
        self.name = name
        self.server = server
        self.characterClass = characterClass
    }
}
