//
//  TaskRowView.swift
//  SF Companion
//
//  Created by Chelsea Mariuzza on 30.07.25.
//

import SwiftUI

struct TaskRowView: View {

    @Binding var task: Task

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(task.type.rawValue.capitalized)
                Toggle(isOn: $task.isCompleted) {}
                    .toggleStyle(iOSCheckboxToggleStyle())
                Spacer()
            }
            .padding(24)
            .background(Color.gray.opacity(0.5))
            .clipShape(.buttonBorder)
        }.padding()
    }
}

#Preview {
    TaskRowView(
        task: .constant(Task(type: .adventure, isCompleted: false))
    )
}
