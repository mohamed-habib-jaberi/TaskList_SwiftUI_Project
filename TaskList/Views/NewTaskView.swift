//
//  NewTaskView.swift
//  TaskList
//
//  Created by mohamed  habib on 09/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    
    @State var text = ""
    
    var body: some View {

        TextField("Task Name", text: $text)
    }
}

struct NewTaskView_Previews: PreviewProvider {
    
                    static var previews: some View {
                        NewTaskView()
                    }

}
