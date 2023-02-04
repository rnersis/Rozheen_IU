//
//  ViewController.swift
//  UIKitCards
//
//  Created by Rozheen Nersisyan Malhami on 1/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    // instanciate our modell class
    //
    //TODO for Lab08 :
    // do not instanciate a model object in the view Controller
    // var model = UIKitCardModel()
    
    // reference to the AppDelegate:
    var appDelegate: AppDelegate?
    
    // reference to the data Model:
    var myModelRef: UIkitCardsModel?
    
    
    
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
        
        // obtain a reference to the AppDelegate:
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        // from the AppDelegate abtain reference to the Model data:
        self.myModelRef = self.appDelegate?.theModel
               
    
        // Hiding the previous answer
        answerLabel.isHidden = true
        
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        // apdating answer label with corect answer
        print("someone clicked the button")
               answerLabel.text =  self.model.getAnswer()
        
        // obtain a reference to the AppDelegate:
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        // from the AppDelegate abtain reference to the Model data:
        self.myModelRef = self.appDelegate?.theModel
               
               
        
        // Shows the answer
        answerLabel.isHidden = false
    }
}

