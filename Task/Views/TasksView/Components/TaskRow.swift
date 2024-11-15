//
//  TaskRow.swift
//  Task
//
//  Created by Allan Viana on 15/11/24.
//

import SwiftUI

struct TaskRow: View {
    let task: Task
    var onClick: () -> Void
    var onDelete: () -> Void

    var body: some View {

        HStack {
            Text(task.title)
                .font(.headline)
                .foregroundColor(
                    task.isFinish
                        ? .gray : Color(red: 1.0, green: 0.77, blue: 0.77)
                )
                .strikethrough(task.isFinish, color: .gray)

            Spacer()

            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 28, height: 26)
                    .overlay(Rectangle().stroke(Color.black, lineWidth: 2))

                if task.isFinish {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.green)

                }
            }
            .onTapGesture {
                onClick()
            }
        }
        .padding()
        .frame(width: 363, height: 86)
        .background(Color(red: 51 / 255, green: 41 / 255, blue: 41 / 255))
        .cornerRadius(10)
        .swipeActions(edge: .trailing) {
            Button(role: .destructive) {
                onDelete()
            } label: {
                Label("Delete", systemImage: "trash")
            }

            Button {
                onClick()
            } label: {
                Label(
                    task.isFinish ? "Undo" : "Complete",
                    systemImage: task.isFinish
                        ? "arrow.uturn.left" : "checkmark")
            }
            .tint(task.isFinish ? .blue : .green)
        }
    }
}
