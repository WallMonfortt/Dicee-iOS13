//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// IBOulet allows me to reference UI elements
    @IBOutlet weak var leftDiceImageView: UIImageView!

    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var rollBtmView: UIButton!

    let numbers: [String] = ["One", "Two", "Three", "Four", "Five", "Six"]


    @IBAction func rollBtn(_ sender: UIButton) {
        print("Roll button pressed")
        
        let leftDiceNumber = Int.random(in: 0...5)
        let rightDiceNumber = Int.random(in: 0...5)
        
        leftDiceImageView.image = UIImage(imageLiteralResourceName: "Dice\(numbers[leftDiceNumber])")
        rightImageView.image = UIImage(imageLiteralResourceName: "Dice\(numbers[rightDiceNumber])")
        
    }
    
}

