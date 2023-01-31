//
//  CalcModel.swift
//  Calc01-rnersis
//
//  Created by Rozheen Nersisyan Malhami on 1/27/23.
//

import Foundation

class Calc01Model {
    var firstOperand: Int = 0
    var secondOperand: Int = 0
    var operation: String = ""
    var answer: Int = 0
    init() {}
    
    func setFirstOperand(firstOperand: Int) {
        self.firstOperand = firstOperand
    }
    
    func setSecondOperand(secondOperand: Int) {
        self.secondOperand = secondOperand
    }
    func setOperation(operantion: String) {
        self.operation = operantion
    }
    
    func performOperation() {
        switch operation {
        case "+":
            answer = firstOperand + secondOperand
            break
        case "-":
            answer = firstOperand - secondOperand
            break
        case "*":
            answer = firstOperand * secondOperand
            break
        case "÷":
            answer = firstOperand / secondOperand
        case "mc":
            break
        case "mr":
            break
        case "m-":
            break
        case "m+":
            break
        case "AC":
            answer = 0
        case "+/-":
            answer = -answer
        default:
            print("Invalid")
        }
        
    }
}
