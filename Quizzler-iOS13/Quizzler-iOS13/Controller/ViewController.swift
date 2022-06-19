//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
   
    @IBOutlet weak var score: UILabel!
    
   var quizbrain = Quizbrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    var numberofcrctanswers=0;
    
    @IBAction func answerSelected(_ sender: UIButton) {
        
        let ans = sender.currentTitle!;
        let color=quizbrain.checkanswer(ans);
        
        if(color){
            sender.backgroundColor=UIColor.green;
        }
        else{
            sender.backgroundColor=UIColor.red;
        }
        
        quizbrain.nextQuestion();
        Timer.scheduledTimer(timeInterval: 0.2,
                             target: self,
                             selector: #selector(self.updateUI),
                             userInfo: nil,
                             repeats: false)
        
        score.text="Score: \(quizbrain.getcount())"
        
    }
    
    @objc func updateUI(){
        
        
        QuestionLabel.text = quizbrain.getQuestion();
        trueButton.backgroundColor=UIColor.clear;
        falseButton.backgroundColor=UIColor.clear;
        progressbar.progress=quizbrain.getProgress();
        
        
    }
}

