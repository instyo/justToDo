//
//  TaskRowView.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

import SwiftUI

struct TaskRowView: View {
    @ObservedObject var vm: TasksViewModel
    let task : TaskItem
    
    var body: some View {
        HStack {
            Image(systemName: task.isDone ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    vm.toggleTask(task)
                }
                .animation(.easeInOut, value: task.isDone)
            
            Text(task.title)
                .strikethrough(task.isDone)
        }
    }
}
