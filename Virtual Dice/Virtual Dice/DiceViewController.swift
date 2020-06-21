//
//  ViewController.swift
//  Virtual Dice
//
//  Created by Hanoudi on 6/14/20.
//  Copyright © 2020 Hanan. All rights reserved.
//
//  This app is simple that creating an MVC Design pattern would be redundant.
//  This class controls the model and generates number numbers and updates UI
import UIKit

class DiceViewController: UIViewController {
    
    // MARK:- Outlets
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    // MARK:- IBActions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Create an array of possible dice faces
        // Intialize each dice image view with a random element from the array
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        sender.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
    }
    
}

