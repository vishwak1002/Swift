//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var boilprogress: UIProgressView!
    @IBOutlet weak var labelTitle: UILabel!
    let eggtimes=["Soft":5,"Medium":8,"Hard":12];
    var player:AVAudioPlayer!
    var secondsPassed=0;
    var totalseconds=0;
    var timer=Timer()
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness=sender.currentTitle!;
        boilprogress.progress=0
        secondsPassed=0
        timer.invalidate()
        labelTitle.text = "How do you like your eggs?"
   
        totalseconds=eggtimes[hardness]! * 60;
//        totalseconds=5
        
        timer=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }
    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalseconds {
            secondsPassed += 1
           let percentageProgress=Float(secondsPassed)/Float(totalseconds)
            boilprogress.progress=percentageProgress
            
//
        }
        else{
            labelTitle.text = "Done!"
//            boilprogress.progress=1
            let url = Bundle.main.url(forResource:"alarm_sound" , withExtension: "mp3")
             player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
        }
    }
    

}
