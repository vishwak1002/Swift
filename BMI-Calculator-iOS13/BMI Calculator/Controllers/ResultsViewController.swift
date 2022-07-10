//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Infinty DBX on 08/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var bmivalue:String?
    var advice:String?
    var color:UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text=bmivalue
        adviseLabel.text=advice
        view.backgroundColor=color
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
