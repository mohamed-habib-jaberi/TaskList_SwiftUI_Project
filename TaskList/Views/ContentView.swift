//
//  ContentView.swift
//  TaskList
//
//  Created by mohamed  habib on 08/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
  @ObservedObject var taskStore: TaskStore
    @State var modelIsPresented = false
    
    var body: some View {
        
        NavigationView {

         List {
            ForEach(taskStore.tasks) { task in
              Text(task.name)
          }
            .onMove{ sourceIndices, distinationIndex in
                
                self.taskStore.tasks.move(fromOffsets: sourceIndices, toOffset: distinationIndex)
                
            }
            .onDelete { indexSet in
                self.taskStore.tasks.remove(atOffsets: indexSet)
            }
         }
        .navigationBarTitle("Tasks")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
            Button(action: {
                self.modelIsPresented = true
                print("tapped ")
            }) {
                Image(systemName: "plus")
            })
        }
        .sheet(isPresented: $modelIsPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
