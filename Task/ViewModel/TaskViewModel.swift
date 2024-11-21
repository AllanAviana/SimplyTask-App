//
//  TaskViewModel.swift
//  Task
//
//  Created by Allan Viana on 13/11/24.
//

import SwiftUI
import Combine

class TaskViewModel: ObservableObject {
    @Published var taskState: TaskState = TaskState()
    private let repository = TaskRepository()


    init() {
        taskState.taskList = repository.loadTasks()
    }

    func addTask(_ task: Task) {
        if !taskState.title.isEmpty {
            taskState.taskList.append(task)
            saveTasks()
            taskState.showPopup = false
            taskState.title = ""
        }
    }

    func updateShowPopup() {
        taskState.showPopup = false
    }

    func finished(task: Task) {
        if let index = taskState.taskList.firstIndex(where: { $0.id == task.id }) {
            taskState.taskList[index].isFinish.toggle()
            saveTasks()
        }
    }

    func deleteTask(_ task: Task) {
        if let index = taskState.taskList.firstIndex(where: { $0.id == task.id }) {
            taskState.taskList.remove(at: index)
            saveTasks()
        }
    }
    
    private func saveTasks() {
            repository.saveTasks(taskState.taskList)
        }
}
