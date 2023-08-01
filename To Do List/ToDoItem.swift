//
//  ToDoItem.swift
//  To Do List
//
//  Created by Sam Yavnilovitch on 8/1/23.
//

import Foundation
class ToDoItem : Identifiable {
    var title : String
    var isImportant : Bool
    var id = UUID()
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
