//
//  AddTaskView.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

import SwiftUI

struct AddTaskView: View {
    @State private var text: String = ""
    var onAdd: (String) -> Void
    
    var body: some View {
        HStack {
            TextField("New task...", text: $text)
            Button("Add") {
                onAdd(text)
                text = ""
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
