//
//  Task.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 27.07.25.
//

import Foundation
import SwiftData

@Model
class Task: Hashable {
    var type: TaskType
    var maxUses: Int?
    var currentUses: Int?
    var cooldownSeconds: TimeInterval?
    var isCompleted: Bool

    init(
        type: TaskType,
        maxUses: Int? = nil,
        currentUses: Int? = nil,
        cooldownSeconds: TimeInterval? = nil,
        isCompleted: Bool = false
    ) {
        self.type = type
        self.maxUses = maxUses
        self.currentUses = currentUses
        self.cooldownSeconds = cooldownSeconds
        self.isCompleted = isCompleted
    }

    func checkUsage() -> Bool {
        guard let maxUses = maxUses else { return false }
        guard let currentUses = currentUses else { return false }
        return currentUses >= maxUses
    }
}
