//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Yosemite on 11/10/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanYearTextField: UITextField!
    @IBOutlet weak var convertedDogYear: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYears(sender: UIButton) {
        let humanYear = humanYearTextField.text.toInt()!
        let conversion = 7

        convertedDogYear.text = "\(humanYear * conversion)" + " years old in Dog year"
        humanYearTextField.resignFirstResponder()
        
    }
    
    @IBAction func converToRealDogYears(sender: UIButton) {
        let humanYear = humanYearTextField.text
        let humanYearToDouble = Double((humanYear as NSString).doubleValue)
        var calculatedYear:Double
        
        if humanYearToDouble > 2 {
            calculatedYear = 2*10.5+(humanYearToDouble-2)*4
        } else {
            calculatedYear = humanYearToDouble*10.5
        }
        
        convertedDogYear.text = "\(Int(calculatedYear))" + " years old in REAL dog year"
        humanYearTextField.resignFirstResponder()
    }
    

}

