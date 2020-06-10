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
            ForEach(taskStore.prioritazedTasks) { index in
                
                SectionView(prioritizedTasks: self.$taskStore.prioritazedTasks[index])
                
            }
         }
        .listStyle(GroupedListStyle())
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

