//
//  TaskStore.swift
//  TaskList
//
//  Created by mohamed  habib on 08/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//
import Combine

class TaskStore: ObservableObject {

//  @Published  var tasks = [
//       "Code a SwiftUI app",
//       "Book an escape room",
//       "Walk the cat",
//       "Pick up heavy things and put them down",
//       "Make karaoke playlist",
//       "Present at iOS meetup group",
//       "Climb El Capitan",
//       "Learn to make baklava",
//       "Play disc golf in every state",
//       "100 movie reboot marathon"
//     ].map { Task(name: $0) }

    @Published var prioritazedTasks = [
        PrioritazedTasks(
            priority: .High,
            names: [ "Code a SwiftUI app",
                  "Book an escape room",
                  "Walk the cat",
                  "Pick up heavy things and put them down"]),
        PrioritazedTasks(
            priority: .meduim,
            names: [
                "Make karaoke playlist",
                "Present at iOS meetup group"]),
        PrioritazedTasks(
            priority: .low,
            names: ["Climb El Capitan"]),
        PrioritazedTasks(
            priority: .no,
            names: ["Learn to make baklava",
                  "Play disc golf in every state",
                  "100 movie reboot marathon"])
    ]
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritazedTasks.firstIndex{ $0.priority == priority}!
    }
}

private extension TaskStore.PrioritazedTasks{
    
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority : priority,
            tasks: names.map{ Task(name: $0)}
        )
    }
}
