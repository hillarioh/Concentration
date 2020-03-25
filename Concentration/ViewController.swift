//
//  ViewController.swift
//  Concentration
//
//  Created by LECRAE on 3/20/20.
//  Copyright © 2020 LECRAE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount:Int = 0 {
        didSet {
            flipCountLabel.text="Flips: \(flipCount)"
        }
    }
    
    lazy var game = Concentration(numberOfPairOfCards: (cardButtons.count + 1)/2)

    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
//        print("CardNumber = \(cardNumber)")
//            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
            
        } else {
            print("Chosen card not in card buttons")
        }
    }
    
    func updateViewFromModel(){
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                               
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2741866438) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
                }
            }
        }
    
    func emoji(for card: Card) -> String{
        return "?"
    }
        
    
    
    
//    func flipCard(withEmoji emoji: String,on button: UIButton){
//
//        if button.currentTitle==emoji {
//            button.setTitle("", for: UIControl.State.normal)
//            button.backgroundColor = UIColor.orange
//        } else {
//            button.setTitle(emoji, for: UIControl.State.normal)
//            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        }
//
//    }
    

}


