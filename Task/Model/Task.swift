//
//  Task.swift
//  Task
//
//  Created by Allan Viana on 13/11/24.
//

import SwiftUI

struct Task: Identifiable{
    var id = UUID() 
    var title: String = ""
    var isFinish: Bool = false
}
