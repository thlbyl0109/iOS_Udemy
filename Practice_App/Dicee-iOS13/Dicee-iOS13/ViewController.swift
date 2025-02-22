//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ---------- //
    // Properties //
    // ---------- //
    
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
//    var leftDiceNumber = 1
//    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
//        // Who          What   Value
//        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")       //imageLiteral
//        diceImageView2.image = #imageLiteral(resourceName: "DiceThree")
//
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        // diceArray.randomElement()
//        diceArray.shuffled()
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        
//            leftDiceNumber += 1
//            rightDiceNumber -= 1
//            print("left Dice Number : \(leftDiceNumber)")
//            print("right Dice Number : \(rightDiceNumber)")
//
//        Int.random(in: 1...10)
        
     
        
    }
    
}

