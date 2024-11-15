//
//  TasksScreen.swift
//  Task
//
//  Created by Allan Viana on 13/11/24.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var viewModel: TaskViewModel

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 40) {
                HeaderView()

                TaskListView(
                    taskList: viewModel.taskList,
                    onDelete: { task in viewModel.deleteTask(task) },
                    onClick: { task in
                        viewModel.finished(task: task)
                    })
            }
            VStack {
                Spacer()

                AddTaskButton(showPopup: $viewModel.taskState.showPopup)
            }

            if viewModel.taskState.showPopup {
                TaskPopupView(
                    title: $viewModel.taskState.title,
                    onCancel: { viewModel.updateShowPopup() },
                    onConfirm: {
                        viewModel.addTask(
                            Task(
                                title: viewModel.taskState.title,
                                isFinish: false))
                    }
                )
            }
        }
    }
}
