//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
//    var rightdiceNum=5
//    var leftdiceNum=1

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
//        diceImageView1.image = UIImage(named:"DiceThree");
//        diceImageView2.alpha=0.5;
//        diceImageView2.image=UIImage(named: "DiceSix");
//        // Do any additional setup after loading the view.
    }

 
    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        print("button got pressed")
//        diceImageView2.image=UIImage(named: "DiceFour")
//        diceImageView1.image=UIImage(named: "DiceFour")
        
        let Images =  [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
//        diceImageView1.image = Images[Int.random(in: 0...5)]
//        rightdiceNum -=  1
//        diceImageView2.image = Images[Int.random(in: 0...5)]
//        leftdiceNum += 1
        diceImageView2.image=Images.randomElement() as! UIImage
        diceImageView1.image=Images.randomElement() as! UIImage
        
        
    }
    
}

