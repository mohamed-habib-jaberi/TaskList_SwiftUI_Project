//
//  TaskEditingView.swift
//  TaskList
//
//  Created by mohamed  habib on 09/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    
    @Binding var task: Task
    
    var body: some View {
        Form{
            TextField("Name", text: $task.name)
        }
      
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant(Task(name: "TO DO")))
    }
}
