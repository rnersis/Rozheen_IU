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
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = UIkitCardsModel().getNextQuestion()
    }
    @IBAction func showQuestion(_ sender: Any) {
        print("someone clicked the button")
        questionLabel.text = UIkitCardsModel().getNextQuestion()
        
        // Hiding the previous answer
        answerLabel.isHidden = true
        
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        // apdating answer label with corect answer
        print("someone clicked the button")
        answerLabel.text =  UIkitCardsModel().getAnswer()
        
        // Shows the answer
        answerLabel.isHidden = false
    }


}

