//
//  ToggleExtension.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 30.07.25.
//

import SwiftUI

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .foregroundStyle(configuration.isOn ? .green : .red)
                configuration.label
            }
        })
    }
}
