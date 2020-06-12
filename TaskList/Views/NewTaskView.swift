//
//  NewTaskView.swift
//  TaskList
//
//  Created by mohamed  habib on 09/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var taskStore: TaskStore
    @State var text = ""
    
    @State var priority: Task.Priority = .no
    
    var body: some View {
        Form{
            TextField("Task Name", text: $text)
            
            VStack{
                Text("Priority")
                Picker("Priority", selection: $priority.caseIndex) {

                              ForEach(Task.Priority.allCases.indices) { periorityIndex in
                                  Text(Task.Priority.allCases[periorityIndex].rawValue.capitalized )
                                  .tag(periorityIndex)
                                
                              }
                          }
                          .pickerStyle(SegmentedPickerStyle())
            }
          
             
            Button("Add"){
                let priorityIndex = self.taskStore.getIndex(for: self.priority)
                self.taskStore.prioritazedTasks[priorityIndex].tasks.append(
                    Task(name: self.text)
                )
                self.presentationMode.wrappedValue.dismiss()
            }
            .disabled(text.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    
        static var previews: some View {
            NewTaskView(taskStore: TaskStore())
        }

}
