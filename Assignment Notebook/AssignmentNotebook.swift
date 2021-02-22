//
//  AssignmentNotebook.swift
//  Assignment Notebook
//
//  Created by Student on 2/19/21.
//

import Foundation

class Assignment: ObservableObject {
    @Published var assignments = [Assignment(priority: "High", description: "DOB Technical Report", dueDate: Date()),
                                  Assignment(priority: "Medium", description: "Spanish Checkpoint One", dueDate: Date()),
                                  Assignment(priority: "Low", description: "AP Comp Gov Podcast", dueDate: Date())]
}
