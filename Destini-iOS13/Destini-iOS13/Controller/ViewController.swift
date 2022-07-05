//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
//    let story0="You see a fork in the road."
//    let choice1="Take a left."
//    let choice2="take a Right"
    var storybrain=StoryBrain();
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    @objc func updateUI(){
        storyLabel.text=storybrain.getStory();
        choice1Button.setTitle(storybrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storybrain.getChoice2(), for: .normal)
          
//          QuestionLabel.text = quizbrain.getQuestion();
//          trueButton.backgroundColor=UIColor.clear;
//          falseButton.backgroundColor=UIColor.clear;
//          progressbar.progress=quizbrain.getProgress();
          
          
      }
    @IBAction func choiceMade(_ sender: UIButton) {
        var choice = sender.currentTitle!
        storybrain.nextStory(choice);
        updateUI()
        
        
    }
    
}

