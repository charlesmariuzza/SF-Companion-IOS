//
//  Item.swift
//  SF Companion
//
//  Created by Charles Mariuzza on 01.06.25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
