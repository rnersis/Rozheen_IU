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
    let loremM = LoremModel()
    
    @IBAction func sendButton(_ sender: Any) {
        if let text = textFieldUI.text{
            viewUIText.text += text
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

