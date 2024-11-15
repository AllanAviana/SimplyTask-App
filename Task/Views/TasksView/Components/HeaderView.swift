//
//  HeaderView.swift
//  Task
//
//  Created by Allan Viana on 15/11/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Text("Today's Tasks")
            .foregroundColor(.white)
            .font(.title)
            .padding(.top, 16)
    }
}

#Preview {
    HeaderView()
}
