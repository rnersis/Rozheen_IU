//
//  MiniRemindersTableViewController.swift
//  MiniReminders
//
//  Created by Rozheen Nersisyan Malhami on 2/23/23.
//

import UIKit

class MiniRemindersTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let lCell = tableView.dequeueReusableCell(withIdentifier:"Reminder")
        
        lCell?.textLabel?.text = "Reminders"
        
        return lCell!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPAth: IndexPath)
    -> UITableViewCell {
        let lCell = tableView.dequeueReusableCell(withIdentifier:"Reminder")
        
        lCell?.textLabel?.text = "Reminders"
        
        return lCell!
    }
    
    
    var remindersData: MiniRemindersDataModel?
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        self.tableView.rowHeight = 100
        super.viewWillAppear(animated)

    }
    override func numberOfSections(_ tableView : UITableView, numberofRowsInSection section: Int) -> Int {
        return 2
    }

}
