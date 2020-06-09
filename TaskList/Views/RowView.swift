//
//  RowView.swift
//  TaskList
//
//  Created by mohamed  habib on 09/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
   @Binding var task: Task
    
    var body: some View {
        
        NavigationLink(destination: TaskEditingView(task: $task)) {
              Text(task.name)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(name: "TO DO")))
    }
}
