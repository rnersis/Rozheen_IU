//
//  LoremModel.swift
//  Lorem
//
//  Created by Rozheen Nersisyan Malhami on 2/17/23.
//

import Foundation

class LoremModel {
    
    let joyWords: [String] = ["happy", "happiness", "joy", "yay", "yeah"]
    let disgustWords: [String] = ["gross"]
    let fearWords: [String] = ["afraid"]
    let angerWords: [String] = ["angry"]
    let sadnessWords: [String] = [ "sad"]
    
    // stores inputs
    var inputStrings: [String] = []
    var outputStrings: [String] = []
    
    func oneInteraction(input: String) -> String{
        inputStrings.append(input)
    
        //making the counts for what words came up
        let joyCount = countOfWord(in: input, from: joyWords)
        let disgustCount = countOfWord(in: input, from: disgustWords)
        let fearCount = countOfWord(in: input, from: fearWords)
        let angerCount = countOfWord(in: input, from: angerWords)
        let sadnessCount = countOfWord(in: input, from: sadnessWords)
        
        //checks to see which is higher to respond with that
        
        if joyCount >= max(disgustCount, fearCount, angerCount, sadnessCount) {
            outputStrings.append("That's very nice.")
            return "That's very nice."
        } else if disgustCount >= max(joyCount, fearCount, angerCount, sadnessCount) {
            outputStrings.append("sorry.")
            return "sorry."
        } else if fearCount >= max(joyCount, disgustCount, angerCount, sadnessCount) {
            outputStrings.append("scary!")
            return "scary!"
        } else if angerCount >= max(joyCount, disgustCount, fearCount, sadnessCount) {
            outputStrings.append("Are you angry?")
            return "Are you angry?"
        } else {
            outputStrings.append("wow!")
            return "wow!"
        }
    }
    
    func countOfWord(in text: String, from wordList: [String]) -> Int {
        let wordArray = text.components(separatedBy: " ")
        var count = 0
        for word in wordArray {
            if wordList.contains(word) {
                count += 1
            }
        }
        return count
    //input string
    }
    func getInputStrings() -> [String] {
        print("input taken in")
        return inputStrings
    //output string
    }
    func getOutputStrings() -> [String] {
        print("output string called")
        return outputStrings
    }
}
