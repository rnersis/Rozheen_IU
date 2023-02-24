//
//  ReminderTableViewController.swift
//  MiniReminders
//
//  Created by Rozheen Nersisyan Malhami on 2/23/23.
//

import Foundation

class MiniRemindersDataModel {
    
    var myData : [Item] =  [
        Item(pContent:"Sample Reminder",
             pCategory: "Sample Category",
             pDueDate: Date (timeIntervalSinceNow: TimeInterval(0)),
             pDone: false)
    ]
    func addEvent(content: String,
                  category: String,
                  dueDate: Date,
                  done: Bool) {
        self.myData.append(
            Item(pContent: content,
             pCategory: category,
             pDueDate: dueDate,
             pDone: done)
        )
    }
}
class Item {
        
        var theContent: String
        var theCategory: String
        var theData: Date
        var theDoneFlag: Bool
}
  


