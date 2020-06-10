//
//  SectionView.swift
//  TaskList
//
//  Created by mohamed  habib on 10/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    
    @Binding var prioritizedTasks: TaskStore.PrioritazedTasks
    
    var body: some View {
        
        Section(header: Text("\(prioritizedTasks.priority.rawValue.capitalized) Priority")){
        
       ForEach(prioritizedTasks.tasks) { index in
              RowView(task: self.$prioritizedTasks.tasks[index])
        }
          .onMove{ sourceIndices, distinationIndex in
              
              self.prioritizedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: distinationIndex)
              
          }
          .onDelete { indexSet in
              self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
          }
    }
    }
}

