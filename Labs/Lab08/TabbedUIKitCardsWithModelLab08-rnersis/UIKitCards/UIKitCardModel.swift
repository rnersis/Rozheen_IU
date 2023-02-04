//  UIKitCardModel.swift
//
//
//  Created by Rozheen Nersisyan Malhami on 1/24/23.
//

import Foundation

// class for question change
class UIkitCardsModel {
    
    
    var questionIndex = 0
   
    var questions = ["Ingredient in Pad Thai?","What is the main ingredient in a Margherita pizza?","What is the highest point on the planet Earth?"]
    
    var answers =  ["Rice noodles", "Mozzarella", "Mount Everest"]
    
    init () {}
    // getting the next question
    func getNextQuestion() -> String {
        print("get question", questionIndex)
        questionIndex += 1
        if questionIndex == questions.count {
            questionIndex = 0
            print("end", questionIndex)
        }
        return questions[questionIndex]
    }
        
        // Function to get the corresponding answer for the current question
    func getAnswer() -> String {
            
        // return the current answer
        return answers[questionIndex]
        
        }
    }
    
    

