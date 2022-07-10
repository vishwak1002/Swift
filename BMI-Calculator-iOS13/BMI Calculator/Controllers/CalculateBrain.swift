//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Infinty DBX on 08/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrain{
    var bmi:BMI?
    

    mutating func calculateBMI(_ height:Float, _ weight :Float){
        let bmivalue=(weight)/pow(height,2)
        
        if bmivalue<18.5{
            bmi=BMI(value: bmivalue, advice: "Eat More pies", color: UIColor.blue)
        }else if bmivalue<24.9{
            bmi=BMI(value: bmivalue, advice: "Fit as a fiddle", color:UIColor.green )
        }
        else{
            bmi=BMI(value: bmivalue, advice: "Eat less pies", color: UIColor.red)
        }
//        bmivalue?.value=(weight)/pow(height,2)
       
    }
    
    func getBMI()->String{
        return  String(format: "%.1f", bmi?.value ?? 0.0 );
    }
    func getadvice()->String{
        return  bmi?.advice ?? "Nice";
    }
    
    func getcolor()->UIColor{
        return bmi?.color ?? UIColor.green;
    }
}
