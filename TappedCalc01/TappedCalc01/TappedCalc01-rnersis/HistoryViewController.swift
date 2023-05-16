//
//  HistoryViewController.swift
//  TappedCalc01
//
//  Created by Rozheen Nersisyan Malhami on 2/10/23.
//

import UIKit

class HistoryViewController: UIViewController, UITextViewDelegate{
    var theAppDelegate : AppDelegate?
    var calcModel : TappedCalc01Model?
    
    @IBOutlet weak var historyDisplay : UITextView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        self.theAppDelegate = UIApplication.shared.delegate as? AppDelegate
        
        self.calcModel = self.theAppDelegate?.calcModel
        self.historyDisplay.text = self.calcModel.output
        
    }
    
    
}
