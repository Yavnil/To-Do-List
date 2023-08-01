//
//  ContentView.swift
//  To Do List
//
//  Created by Al Yavnilovitch on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button("+") {
                    self.showNewTask = true
                }
                .font(.title)
            }
            .padding()
            List {
                ForEach(toDoItems) { toDoItem in
                    if toDoItem.isImportant {
                        Text("!!" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                }
            }
            Spacer()
        }
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
