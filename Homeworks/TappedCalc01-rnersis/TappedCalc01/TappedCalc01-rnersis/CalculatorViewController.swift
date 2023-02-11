//
//  alculatorViewController.swift
//  TappedCalc01
//
//  Created by Rozheen Nersisyan Malhami on 1/27/23.
//

import UIKit

class alculatorViewController: UIViewController {
    
    @IBOutlet weak var calc01Display: UILabel!
    var numScreen : Int = 0;
    var operation = 0;
    var binaryNumberBeingEntered: Bool = false
    var operationEntered: Bool = false
    let theModel = TappedCalc01Model()
    
    // Actions for when 0 or 1 is pressed
    @IBAction func pressed01Digit(_ sender: UIButton){
        
        // Debug
        print("Zero or one was clicked")
        // Checking for button title
        if binaryNumberBeingEntered == true {
            // checking if user is entering a binary deadline
            calc01Display.text = (sender.currentTitle)
            binaryNumberBeingEntered = false
            
        }
        else {
            calc01Display.text = calc01Display.text! + String(sender.tag-1)
            binaryNumberBeingEntered = true
        }
    }
    
    
    
    @IBAction func selectedOperation(_ sender: UIButton){
        print("Operation was clicked")
        if operationEntered == true {
            
            
            
        }
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
    }
}

