//
//  CreateAnAssignment.swift
//  Assignment Notebook
//
//  Created by Student on 2/19/21.
//

import SwiftUI

struct CreateAssignment: View {
    @ObservedObject var assignmentList: AssignmentList
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let courses = ["Precalc", "Spanish", "Mobile Apps Dev", "HES", "AP Comp Gov", "PLTW DE", "AP Seminar"]
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Course", selection: $course) {
                    ForEach(Self.courses, id: \.self) { courses in
                        Text(course)
                    }
                }
            }
        }
    }
}

struct CreateAnAssignment_Previews: PreviewProvider {
    static var previews: some View {
        CreateAssignment(assignmentList: AssignmentList())
    }
}
