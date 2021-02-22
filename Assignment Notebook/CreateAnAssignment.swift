//
//  CreateAnAssignment.swift
//  Assignment Notebook
//
//  Created by Student on 2/19/21.
//

import SwiftUI

struct CreateAssignment: View {
    @ObservedObject var assignments: Assignment
    @State private var priority = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
        static let priorites = ["High", "Medium", "Low"]
}

struct CreateAnAssignment_Previews: PreviewProvider {
    static var previews: some View {
        CreateAssignment(assignments: Assignment())
    }
}
