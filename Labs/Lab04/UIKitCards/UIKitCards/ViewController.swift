//
//  ViewController.swift
//  UIKitCards
//
//  Created by Rozheen Nersisyan Malhami on 1/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showQuestion(_ sender: Any) {
        print("someone clicked the button")
        self.questionLabel.text = "In what Country is Timbuktu?"
    }
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

