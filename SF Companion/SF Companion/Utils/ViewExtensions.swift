//
//  ViewExtensions.swift
//  TraumJobs
//
//  Created by Charles Mariuzza on 02.04.25.
//

import Foundation
import SwiftUI

extension View {
    public func toFullscreenSheet() -> some View {
        self.foregroundColor(.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray.opacity(0.3))
    }
}
