//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    let arrayOfDices = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        var randomLeftDice = Int.random(in: 0...5)
        diceImageOne.image = arrayOfDices[randomLeftDice]
        print("The value of the left dice is: \(randomLeftDice + 1)")
        
        var randomRightDice = Int.random(in: 0...5)
        diceImageTwo.image = arrayOfDices[randomRightDice]
        print("The value of the right dice is: \(randomRightDice + 1)")
    }
}
