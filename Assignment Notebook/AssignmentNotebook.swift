//
//  AssignmentNotebook.swift
//  Assignment Notebook
//
//  Created by Student on 2/19/21.
//

import Foundation

class AssignmentList: ObservableObject {
    @Published var items = [Assignment(course: "PLTW", description: "DOB Technical Report", dueDate: Date()),
                            Assignment(course: "Spanish", description: "Spanish Checkpoint One", dueDate: Date()),
                            Assignment(course: "AP Gov", description: "AP Comp Gov Podcast", dueDate: Date())]
}
