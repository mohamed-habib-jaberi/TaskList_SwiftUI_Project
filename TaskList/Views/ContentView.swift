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
         }
        .navigationBarTitle("Tasks")
        .navigationBarItems(
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
