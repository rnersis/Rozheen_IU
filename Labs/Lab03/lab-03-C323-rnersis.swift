//
//  Lab-03-C323-rnersis.swift
//
//
//  Created by Rozheen Nersisyan Malhami on 1/19/23.
//
import Cocoa

// Save the answer
// Store count
let keyAnimal: String = "Lion"
var numCount = 0

print("Hello! Welcome to the animal guessing game.")
print("I have a animal in mind....")
print("Can you guess what it is?")

// Store user input(guess)
var userGuess = readLine()

while true {
// Checking if user input matches key
    if (userGuess == keyAnimal) {
        print("You Win!")
        print("Count:", numCount)
        break
        
    }
    else{
        print("Close! Try again...")
        userGuess = readLine()
        numCount += 1
    }
}


