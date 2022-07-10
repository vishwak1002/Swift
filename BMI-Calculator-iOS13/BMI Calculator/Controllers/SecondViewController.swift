//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Infinty DBX on 07/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


class SecondViewController:UIViewController{
    var bmi = "0.0"
    override func viewDidLoad() {
    super.viewDidLoad()
        view.backgroundColor = .red
        let label=UILabel()
        label.text=bmi
        label.frame=CGRect(x: 30, y: 20, width: 100, height: 60)
        view.addSubview(label)
    }
}
