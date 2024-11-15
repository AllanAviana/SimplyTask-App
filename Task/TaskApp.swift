//
//  TaskApp.swift
//  Task
//
//  Created by Allan Viana on 13/11/24.
//

import SwiftUI

@main
struct TaskApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(TaskViewModel())
        }
    }
}
