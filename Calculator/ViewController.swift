//
//  ViewController.swift
//  Calculator
//
//  Created by Ammar Al-Qaraghuli on 2018-04-12.
//  Copyright © 2018 Ammar Al-Qaraghuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    
    var calculator = Calculator()
    
    
    @IBAction func zeroBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "0"));
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "1"));
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "2"));
    }
    
    @IBAction func threeBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "3"));
    }
    
    @IBAction func fourBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "4"));
    }
    @IBAction func fiveBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "5"));
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "6"));
    }

    @IBAction func sevenBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "7"));
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "8"));
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "9"));
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        
    }
    
    @IBAction func negateBtn(_ sender: Any) {
        outputLabel.text = String(calculator.numberTapped(number: "-"));
    }
    
    @IBAction func percentBtn(_ sender: Any) {
        calculator.operationTapped(operation: "%")
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        calculator.operationTapped(operation: "%")
    }
    
    @IBAction func multiplyBtn(_ sender: Any) {
        calculator.operationTapped(operation: "*")
    }
    
    @IBAction func subtractBtn(_ sender: Any) {
        calculator.operationTapped(operation: "-")
    }
    
    @IBAction func additionBtn(_ sender: Any) {
        calculator.operationTapped(operation: "+")
    }
    
    @IBAction func equalBtn(_ sender: Any) {
        calculator.operationTapped(operation: "=")
    }

    @IBAction func decimalBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + ".";
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

