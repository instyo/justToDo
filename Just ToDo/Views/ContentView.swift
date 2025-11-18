//
//  ContentView.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var vm: TasksViewModel
    @State private var showAdd = false
    
    var body: some View {
        NavigationStack {
            VStack {
                TasksListView(vm: vm)
                
                Button(showAdd ? "Close" : "Add Task") {
                    withAnimation {
                        showAdd.toggle()
                    }
                }
                
                if showAdd {
                    AddTaskView { title in
                        withAnimation {
                            vm.addTask(title)
                        }
                    }.transition(.scale)
                }
                
            }
            
            .padding()
            .navigationTitle("My Tasks")
        }
    }
}
