//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
   
    
    var calculatorBrain = CalculateBrain()
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
   
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        height.text = String(format: "%.2f", sender.value)+"m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weight.text=String(format:"%.0f",sender.value)+"Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height=heightSlider.value;
        let weight=weightSlider.value;
        calculatorBrain.calculateBMI(height,weight)
        
       
//        let secondVC = SecondViewController()
//        secondVC.bmi=String(format:"%.1f",BMI)
//        self.present(secondVC, animated: true, completion: nil);
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC=segue.destination as! ResultsViewController
            destinationVC.bmivalue = calculatorBrain.getBMI()
            destinationVC.advice=calculatorBrain.getadvice()
            destinationVC.color=calculatorBrain.getcolor()
        }
         
    }
}

