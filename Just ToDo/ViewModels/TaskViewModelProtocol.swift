//
//  TaskViewModelProtocol.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

protocol TaskViewModelProtocol: AnyObject {
    var tasks: [TaskItem] { get }
    func addTask(_ title: String)
    func toggleTask(_ task: TaskItem)
    func deleteTask(_ task: TaskItem)
}
