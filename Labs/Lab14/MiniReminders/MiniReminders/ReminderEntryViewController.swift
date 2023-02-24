//
//  ReminderEntryViewController.swift
//  MiniReminders
//
//  Created by Rozheen Nersisyan Malhami on 2/23/23.
//

import UIKit
class ReminderEnteryViewController: UIViewController {
    
    @IBOutlet weak var myContent: UITextField!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myDueDatePicker: UIDatePicker!
    
    
    func addReminder(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lDataModel = lAppDelegate.myRemindersData
        
        lDataModel.addEvent(content: self.myContent.text ?? "Smile", category:self.myCategory.text ?? "Mood", dueDate: self.myDueDatePicker.date, done: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
