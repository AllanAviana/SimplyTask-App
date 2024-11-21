//
//  TaskViewModel.swift
//  Task
//
//  Created by Allan Viana on 13/11/24.
//

import SwiftUI
import Combine

class TaskViewModel: ObservableObject{
    @Published var taskState: TaskState = TaskState()
    
    func addTask(_ task: Task){
        if taskState.title != ""{
            taskState.taskList.append(task)
            taskState.showPopup = false
            taskState.title = ""
        }
    }
    
   func updateShowPopup(){
        taskState.showPopup = false
    }
    
    func finished(task: Task) {
        if let index = taskState.taskList.firstIndex(where: { $0.id == task.id }) {
            taskState.taskList[index].isFinish.toggle()
        }
    }
    
    func deleteTask(_ task: Task) {
        if let index = taskState.taskList.firstIndex(where: { $0.id == task.id }) {
            taskState.taskList.remove(at: index)
            }
        }

}
