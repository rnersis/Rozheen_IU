//
//  InteractionViewController.swift
//  Lorem
//
//  Created by Rozheen Nersisyan Malhami on 2/17/23.
//

import UIKit

class InteractionViewController: UIViewController {
    
    
    @IBOutlet weak var viewUIText: UITextView!
    @IBOutlet weak var textFieldUI: UITextField!
    let lorem = Lorem()
    
    @IBAction func sendButton(_ sender: Any) {
    
        if let input = textFieldUI.text{
            print("input from text enter")
            let answer = lorem.oneInteraction(input: input){
                viewUIText.text += "\(input)\n\(answer))\n"
        else { return }
        }
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

