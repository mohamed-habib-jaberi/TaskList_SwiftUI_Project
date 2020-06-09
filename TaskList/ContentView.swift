//
//  ContentView.swift
//  TaskList
//
//  Created by mohamed  habib on 08/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var taskStore = TaskStore()
    
    var body: some View {
        
        // Task without UUID
//        List(taskStore.tasks.indices) { index in
//            Text(self.taskStore.tasks[index].name)
//        }
        
        // Add UUID
//        List(taskStore.tasks, id: \.id) { task in
//            Text(task.name)
//        }
        
        // Add UUID and Identifiable protocole
              List(taskStore.tasks) { task in
                  Text(task.name)
              }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
