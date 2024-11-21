//
//  TaskRepository.swift
//  Task
//
//  Created by Allan Viana on 21/11/24.
//

import Foundation

class TaskRepository {
    
    private let key = "taskList"

    func saveTasks(_ taskList: [Task]) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(taskList) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }
    
    func loadTasks() -> [Task] {
        if let savedTasks = UserDefaults.standard.data(forKey: key) {
            let decoder = JSONDecoder()
            if let loadedTasks = try? decoder.decode([Task].self, from: savedTasks) {
                return loadedTasks
            }
        }
        return []
    }
}
