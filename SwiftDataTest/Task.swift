//
//  Task.swift
//  SwiftDataTest
//
//  Created by Vasichko Anna on 10.06.2023.
//

import Foundation
import SwiftData

@Model
final class Task {
    let id: UUID
    var name: String
    
    init(name: String) {
        self.id = UUID()
        self.name = name
    }
}
