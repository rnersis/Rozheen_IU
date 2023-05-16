//
//  NewFriendViewController.swift
//  FriendsApp
//
//  Created by Rozheen Nersisyan Malhami on 2/25/23.
//

import UIKit

class NewFriendViewController: UIViewController {
    
    let myModel = FriendsModel()
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var submit: UIButton!
    
    @IBAction func submitTapped(_sender:UIButton){
        let firstNameText =  firstName.text ?? " "
        let lastNameText = lastName.text ?? " "
        let emailA = email.text ?? " "
        
        myModel.addFriends(firstN:firstNameText, lastN:lastNameText, email:emailA)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
