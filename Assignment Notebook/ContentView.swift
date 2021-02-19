//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Student on 2/19/21.
//

import SwiftUI

struct ContentView: View {
    @State var assignments = ["First Assignment", "Second Assignment", "Third Assignment", "Fourth Assignment", "Fifth Assignment"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(assignments, id: \.self) { thing in
                    Text(thing)
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

