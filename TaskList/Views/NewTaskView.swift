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
    
    var body: some View {
        Form{
            TextField("Task Name", text: $text)
            
            Button("Add"){
                self.taskStore.tasks.append(
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
