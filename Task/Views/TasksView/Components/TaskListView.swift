//
//  TaskListView.swift
//  Task
//
//  Created by Allan Viana on 15/11/24.
//

import SwiftUI

struct TaskListView: View {
    let taskList: [Task]
    var onDelete: (Task) -> Void
    var onClick: (Task) -> Void

    var body: some View {
        List {
            ForEach(taskList.indices, id: \.self) { index in
                TaskRow(
                    task: taskList[index],
                    onClick: { onClick(taskList[index]) },
                    onDelete: { onDelete(taskList[index]) }
                )
                .listRowBackground(Color.black)
                .listRowSeparator(.visible)
                .listRowInsets(
                    EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
        }
        .listStyle(PlainListStyle())

    }
}
