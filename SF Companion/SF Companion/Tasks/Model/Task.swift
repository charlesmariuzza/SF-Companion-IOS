//
//  Task.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 27.07.25.
//

import Foundation

class Task {
    let type: TaskType
    let maxUses: Int?
    var currentUses: Int?
    var cooldownSeconds: TimeInterval?
    
    init(type: TaskType, maxUses: Int? = nil, currentUses: Int? = nil, cooldownSeconds: TimeInterval? = nil) {
        self.type = type
        self.maxUses = maxUses
        self.currentUses = currentUses
        self.cooldownSeconds = cooldownSeconds
    }
    
    var isCompleted: Bool {
        guard let maxUses = maxUses else { return false }
        guard let currentUses = currentUses else { return false }
        return currentUses >= maxUses
    }
}
