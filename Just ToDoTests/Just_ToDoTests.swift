//
//  Just_ToDoTests.swift
//  Just ToDoTests
//
//  Created by ikhwan on 17/11/25.
//

import XCTest
@testable import Just_ToDo

final class TasksViewModelTests: XCTestCase {

    var vm: TasksViewModel!

    override func setUp() {
        super.setUp()
        vm = TasksViewModel()
    }

    override func tearDown() {
        vm = nil
        super.tearDown()
    }

    func test_addTask() {
        // When
        vm.addTask("Buy milk")

        // Then
        XCTAssertEqual(vm.tasks.count, 1)
        XCTAssertEqual(vm.tasks.first?.title, "Buy milk")
    }

    func test_addTask_emptyTitle_doesNotAdd() {
        vm.addTask("")   // empty title

        XCTAssertTrue(vm.tasks.isEmpty) // no task should be added
    }

    func test_toggleTask() {
        vm.addTask("Study SwiftUI")

        vm.toggleTask(vm.tasks[0])
    
        XCTAssertTrue(vm.tasks[0].isDone)

        vm.toggleTask(vm.tasks[0])
        
        XCTAssertFalse(vm.tasks[0].isDone)
    }

    func test_deleteTask() {
        vm.addTask("One")
        vm.addTask("Two")

        let taskToDelete = vm.tasks[0]

        vm.deleteTask(taskToDelete)

        XCTAssertEqual(vm.tasks.count, 1)
        XCTAssertFalse(vm.tasks.contains(taskToDelete))
    }
}
