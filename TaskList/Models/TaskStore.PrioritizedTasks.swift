//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by mohamed  habib on 10/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation

extension TaskStore{
    struct PrioritazedTasks {
        
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritazedTasks: Identifiable{
    
    var id : Task.Priority{ priority }
    
}
