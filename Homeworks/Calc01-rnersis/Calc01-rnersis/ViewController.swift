//
//  ViewController.swift
//  Calc01
//
//  Created by Rozheen Nersisyan Malhami on 1/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calc01Display: UILabel!
   
    var binaryNumberBeingEntered: Bool = false
    var theModel = Calc01Model()
    
// Actions for when 0 or 1 is pressed
    @IBAction func pressed01Digit(_ sender: UIButton){
        
    // Debug
        print("Zero or one was clicked")
        // Checking for button title
        if let digit = sender.currentTitle {
            // checking if user is entering a binary deadline
            if binaryNumberBeingEntered {
                calc01Display.text! += digit
                
            }
            else {
                calc01Display.text = digit
                binaryNumberBeingEntered = true
            }
        }
    }
    
    
    @IBAction func selectedOperation(_ sender: UIButton){
        print("Operation was clicked")
        binaryNumberBeingEntered = false
        if binaryNumberBeingEntered {
            theModel.setFirstOperand(firstOperand: Int(calc01Display.text!)!)
            binaryNumberBeingEntered = false
        }
        theModel.setOperation(operantion: sender.currentTitle!)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calc01Display.text = "0"
        // Do any additional setup after loading the view.
    }
}

