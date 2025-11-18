//
//  Just_ToDoApp.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

import SwiftUI

@main
struct Just_ToDoApp: App {
    @StateObject private var vm = TasksViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
