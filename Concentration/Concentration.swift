//
//  Concentration.swift
//  Concentration
//
//  Created by LECRAE on 3/23/20.
//  Copyright © 2020 LECRAE. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    
    func chooseCard(at index: Int){
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairOfCards: Int) {
        for _ in 1...numberOfPairOfCards{
            let card = Card()
            cards += [card,card]
        }
        
        //TODO shuffles the cards
    }
}
