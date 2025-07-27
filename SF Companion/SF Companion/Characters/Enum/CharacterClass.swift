//
//  CharacterClass.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 09.06.25.
//

import Foundation

enum CharacterClass: String, Identifiable, CaseIterable, Codable {
    case warrior = "Krieger"
    case mage = "Magier"
    case scout = "Kundschafter"
    case assassin = "Assassine"
    case battlemage = "Kampfmagier"
    case berserker = "Berserker"
    case druid = "Druide"
    case demonhunter = "Dämonenjäger"
    case barde = "Barde"
    case necromancer = "Nekromant"
    case paladin = "Paladin"

    var id: CharacterClass { self }

    var logoName: String {
        switch self {
        case .warrior:
            return "warriorLogo"
        case .mage:
            return "mageLogo"
        case .scout:
            return "scoutLogo"
        case .assassin:
            return "assassinLogo"
        case .battlemage:
            return "battlemageLogo"
        case .berserker:
            return "berserkerLogo"
        case .druid:
            return "druidLogo"
        case .demonhunter:
            return "demonhunterLogo"
        case .barde:
            return "bardeLogo"
        case .necromancer:
            return "necromancerLogo"
        case .paladin:
            return "paladinLogo"
        }
    }
}
