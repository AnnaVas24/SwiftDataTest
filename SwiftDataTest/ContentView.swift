//
//  ContentView.swift
//  SwiftDataTest
//
//  Created by Vasichko Anna on 10.06.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var tasks: [Task]
    
    @State private var taskName = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Enter the task", text: $taskName)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Save") {
                        let task = Task(name: taskName)
                        modelContext.insert(task)
                        taskName = "" 
                    }
                    .buttonStyle(.borderedProminent)
                }
                List(tasks) { task in
                    Text(task.name)
                        .swipeActions {
                            Button("Delete", role: .destructive) {
                                modelContext.delete(task)
                            }
                            Button("Update") {
                                task.name = "Another task"
                            }
                        }
                }
                
                
            }
            .navigationTitle("Tasks")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
