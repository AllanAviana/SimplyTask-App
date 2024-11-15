//
//  TaskPopupView.swift
//  Task
//
//  Created by Allan Viana on 15/11/24.
//

import SwiftUI

struct TaskPopupView: View {
    @Binding var title: String
    var onCancel: () -> Void
    var onConfirm: () -> Void

    var body: some View {
        Color.gray.opacity(0.4)
            .edgesIgnoringSafeArea(.all)

        VStack(spacing: 20) {
            Text("Enter the name of your task:")
                .font(.headline)
                .padding()

            TextField("Task title", text: $title)
                .padding()
                .background(Color.white)
                .cornerRadius(10)

            HStack(spacing: 20) {
                Button(action: onCancel) {
                    Text("Cancel")
                        .frame(width: 100, height: 30)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: onConfirm) {
                    Text("Confirm")
                        .frame(width: 100, height: 30)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 10)
        .frame(maxWidth: 300)
    }
}
