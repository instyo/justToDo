//
//  EmptyStateView.swift
//  Just ToDo
//
//  Created by ikhwan on 17/11/25.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "tray")
                .font(.system(size: 40))
            Text("No Tasks Yet")
                .font(.headline)
            Text("Add your first task to get started!")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}

