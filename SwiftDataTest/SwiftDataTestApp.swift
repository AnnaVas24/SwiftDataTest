//
//  SwiftDataTestApp.swift
//  SwiftDataTest
//
//  Created by Vasichko Anna on 10.06.2023.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Task.self)
        }
    }
}
