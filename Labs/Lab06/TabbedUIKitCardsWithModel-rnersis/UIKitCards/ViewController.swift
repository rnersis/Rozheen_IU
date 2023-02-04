//
//  ViewController.swift
//  UIKitCards
//
//  Created by Rozheen Nersisyan Malhami on 1/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var showQuestion: UIButton!
    @IBOutlet weak var showAnswer: UIButton!
    let model = UIkitCardsModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    @IBAction func showQuestion(_ sender: Any) {
        print("someone clicked the button")
               self.questionLabel.text = self.model.getNextQuestion()
               
    
        // Hiding the previous answer
        answerLabel.isHidden = true
        
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        // apdating answer label with corect answer
        print("someone clicked the button")
               answerLabel.text =  self.model.getAnswer()
               
        
        // Shows the answer
        answerLabel.isHidden = false
    }
}

