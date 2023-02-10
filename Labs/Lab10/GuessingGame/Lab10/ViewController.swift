//
//  ViewController.swift
//  Guessing Game
//
//  Created by Rozheen Nersisyan Malhami on 2/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gameStart: UIButton!
    @IBOutlet var numberOfGuess: UILabel!
    @IBOutlet var lastGuess: UILabel!
    @IBOutlet var lettersGuess: UILabel!
    
    var animalKeyGuess = "Dog"
    // Flag to check if the game has started
    var gameStarted = false
    var correctLetters = [String]()
    
    
    // Action for when the start game button is pressed
    @IBAction func beginGame(_ sender: Any) {

        // If the game has not started, start the game
        if !gameStarted {
                  gameStart.setTitle("End Game", for: .normal)
                  gameStart.backgroundColor = UIColor.green
                  userInputInterface.isEditable = true
                  gameStarted = true
              } else {
                // If the game has already started, end the game
                // Change the title and color of the start game
                  gameStart.setTitle("Begin New Game", for: .normal)
                  gameStart.backgroundColor = UIColor.systemBlue
                  userInputInterface.isEditable = false
                  userInputInterface.text = "The game has ended"
                  lettersGuess.text = ""
                  numOfGuesses = 0
                  gameStarted = false
                  correctLetters.removeAll()
              }
          }
    
    
    @IBOutlet var userInputInterface: UITextView!
    @IBAction func guessAnswer(_ sender: Any) {
        let userGuess = userInputInterface.text
        numOfGuesses += 1
        let answerKey = [ "D", "O", "G"]
            
        if userGuess == animalKeyGuess {
            userInputInterface.text = "Correct!"
            } else {
                for letter in answerKey {
                    if userGuess!.contains(letter) {
                        correctLetters.append(letter)
                        lettersGuess. text = correctLetters
                    }
                }
            }
        }
    
    @IBAction func userInput(_ sender: Any) {
      //takes the user input and updates the user interface section
        //tells if it was correct
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

