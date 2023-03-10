//
//  Lorem2.swift
//  Lorem
//
//  Created by Rozheen Nersisyan Malhami on 3/10/23.
//

import UIKit

class Lorem2: NSObject, Codable {
    var inputText : String
    
    
    override var description: String {
        return self.inputText
    }
    
    init(inputText: String) {
        self.inputText = inputText
        super.init()
    }
}
