//
//  HomeView.swift
//  Task
//
//  Created by Allan Viana on 15/11/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(Color.black)
                    .ignoresSafeArea()
                
                VStack(spacing : 121){
                    
                    Text("TaskApp")
                        .font(.custom("", size: 64))
                        .foregroundColor(Color.white)
                    
                    Image("Image")
                        .resizable()
                        .frame(width: 290, height: 290)

                    
                    NavigationLink(destination: TasksView()){
                        Text("Start")
                            .foregroundColor(Color.black)
                            .frame(width: 242, height: 45)
                            .background(Color.white)
                            .cornerRadius(100)
                    }
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }
        }
    }
}
