//
//  TasksViewModel.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

import Foundation

final class TasksViewModel: ObservableObject, TaskViewModelProtocol {
    @Published private(set) var tasks: [TaskItem] = []
    
    func addTask(_ title: String) {
        guard !title.isEmpty else { return }
        tasks.append(TaskItem(title: title))
    }
    
    func toggleTask(_ task: TaskItem) {
        guard let index = tasks.firstIndex(of: task) else { return }
        tasks[index].isDone.toggle()
    }
    
    func deleteTask(_ task: TaskItem) {
        tasks.removeAll { $0.id == task.id }
    }
}
