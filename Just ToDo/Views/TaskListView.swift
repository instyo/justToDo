//
//  TaskListView.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

import SwiftUI

struct TasksListView: View {
    @ObservedObject var vm: TasksViewModel

    var body: some View {
        List {
            ForEach(vm.tasks) { task in
                TaskRowView(vm: vm, task: task)
            }
            .onDelete { indexSet in
                indexSet.map { vm.tasks[$0] }.forEach(vm.deleteTask)
            }
        }
        .listStyle(.plain)
    }
}

