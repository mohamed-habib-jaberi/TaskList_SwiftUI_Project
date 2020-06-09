//
//  ContentView.swift
//  TaskList
//
//  Created by mohamed  habib on 08/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var taskStore: TaskStore
    @State var modelIsPresented = false
    
    var body: some View {
        
        NavigationView {

          List(taskStore.tasks) { task in
              Text(task.name)
          }
        .navigationBarTitle("Tasks")
        .navigationBarItems(
            trailing:
            Button(action: {
                self.modelIsPresented = true
            }) {
                Image(systemName: "plus")
            })
        }
        .sheet(isPresented: $modelIsPresented) {
            NewTaskView()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
