//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tip=0.1
    var numOfPeople=2
    var billTotal=0.0
    var finalResult="0"
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected=false;
        tenPctButton.isSelected=false;
        twentyPctButton.isSelected=false;
        sender.isSelected=true;
        let buttonTitle = sender.currentTitle!
               
               //Remove the last character (%) from the title then turn it back into a String.
               let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
               
               //Turn the String into a Double.
               let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
               
               //Divide the percent expressed out of 100 into a decimal e.g. 10 becomes 0.1
               tip = buttonTitleAsANumber / 100
    }
    

    @IBAction func stepValueChanged(_ sender: UIStepper) {
        numOfPeople=Int(sender.value);
        splitNumberLabel.text = String(numOfPeople)
        
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
               
               //If the text is not an empty String ""
               if bill != "" {
                   
                   //Turn the bill from a String e.g. "123.50" to an actual String with decimal places.
                   //e.g. 125.50
                   billTotal = Double(bill)!
                   
                   //Multiply the bill by the tip percentage and divide by the number of people to split the bill.
                   let result = billTotal * (1 + tip) / Double(numOfPeople)
                   
                   //Round the result to 2 decimal places and turn it into a String.
                  
                   finalResult=String(format: "%.2f", result)
               }
        self.performSegue(withIdentifier: "navigateToResultsView", sender: self)    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="navigateToResultsView"{
        let destinationVC = segue.destination as! ResultsViewController
        
        //Set the destination ResultsViewController's properties.
        destinationVC.result = finalResult
        destinationVC.tip = Int(tip * 100)
        destinationVC.split = numOfPeople
    }
    }
}

