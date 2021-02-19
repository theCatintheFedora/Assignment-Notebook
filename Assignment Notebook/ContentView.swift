//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Student on 2/19/21.
//

import SwiftUI

struct ContentView: View {
    @State var assignments =
        [Assignment(priority: "High", description: "DOB Technical Report", dueDate: Date()),
         Assignment(priority: "Medium", description: "Spanish Checkpoint One", dueDate: Date()),
         Assignment(priority: "Low", description: "AP Comp Gov Podcast", dueDate: Date())]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(assignments) { item in
                    Text(item.description)
                }
                .onMove(perform: { indices, newOffset in
                    assignments.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    assignments.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("Assignments Due")
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Assignment: Identifiable {
    var id = UUID()
    var priority = String()
    var description = String()
    var dueDate = Date()
    
}
