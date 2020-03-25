//
//  Card.swift
//  Concentration
//
//  Created by LECRAE on 3/23/20.
//  Copyright © 2020 LECRAE. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFact = 0
    
    static func getUniqueIdentifier()-> Int {
        identifierFact += 1
        return identifierFact
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
        
    }
    
   
}
