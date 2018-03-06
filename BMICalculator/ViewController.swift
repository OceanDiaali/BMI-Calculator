//
//  ViewController.swift
//  BMICalculator
//
//  Created by Apple on 06/03/2018.
//  Copyright © 2018 digirealis. All rights reserved.
//
/**
 A BMI below 18.5 (shown in white) is considered underweight.
 A BMI of 18.5 to 24.9 (green) is considered healthy.
 A BMI of 25 to 29.9 (yellow) is considered overweight.
 A BMI of 30 or higher (red) is considered obese
 **/

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weightFld: UITextField!
    @IBOutlet weak var heightFld: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var verdictLabel: UILabel!
    
    var weight: Double = 0.0
    
    var height: Double = 0.0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateBMI(_ sender: UIButton)
    {
        // String to double conversion
        weight = NSString(string: weightFld.text!).doubleValue
        height = NSString(string: heightFld.text!).doubleValue
        
        let bmi = ((weight/height)/height)
        if(bmi >= 30){
            bmiLabel.text = "\(bmi.rounded())Kg/m2"
            verdictLabel.backgroundColor = UIColor.red
            verdictLabel.text = "Obese"
        }else if(bmi >= 25 && bmi <= 29.9){
            bmiLabel.text = "\(bmi.rounded())Kg/m2"
            verdictLabel.backgroundColor = UIColor.yellow
            verdictLabel.text = "Overweight"
        }else if(bmi >= 18.5 && bmi <= 24.9){
            bmiLabel.text = "\(bmi.rounded())Kg/m2"
            verdictLabel.backgroundColor = UIColor.green
            verdictLabel.text = "Healthy"
        }else if(bmi < 18.5){
            bmiLabel.text = "\(bmi.rounded())Kg/m2"
            verdictLabel.backgroundColor = UIColor.gray
            verdictLabel.text = "Underweight"
        }else {
        bmiLabel.text = "\(bmi.rounded())Kg/m2"
        }
    }
    @IBAction func resetButton(_ sender: UIButton)
    {
        weightFld.text = ""
        heightFld.text = ""
        bmiLabel.text = "0.0Kg/m2"
        verdictLabel.backgroundColor = UIColor.white
        verdictLabel.text = ""
    }
    

} //end of class

