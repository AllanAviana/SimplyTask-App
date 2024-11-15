//
//  AddTaskButton.swift
//  Task
//
//  Created by Allan Viana on 15/11/24.
//

import SwiftUI

struct AddTaskButton: View {
    @Binding var showPopup: Bool

    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                showPopup = true
            }) {
                Text("+")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)
                    .frame(width: 56, height: 56)
                    .background(Circle().fill(Color.white))
                    .shadow(radius: 4)
            }
            .padding(.trailing, 30)
            .padding(.bottom, 30)
        }
    }
}
