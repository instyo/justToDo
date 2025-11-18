//
//  TaskItem.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

import Foundation

struct TaskItem: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var isDone: Bool = false
    var createdAt: Date = .now
}
