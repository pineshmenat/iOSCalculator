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
        outputLabel.text = calculator.numberTapped(number: "0");
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "1");
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "2");
    }
    
    @IBAction func threeBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "3");
    }
    
    @IBAction func fourBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "4");
    }
    @IBAction func fiveBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "5");
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "6");
    }

    @IBAction func sevenBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "7");
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "8");
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "9");
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        calculator.cancelTapped()
        outputLabel.text = "0"
        inputLabel.text = "0"
    }
    
    @IBAction func negateBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: "-");
    }
    
    @IBAction func percentBtn(_ sender: Any) {
        if(calculator.operationTapped(operation: "%")) {
            outputLabel.text = "0"
        } else {
            outputLabel.text = String(calculator.output)
        }
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        if(calculator.operationTapped(operation: "/")) {
            outputLabel.text = "0"
        } else {
            outputLabel.text = String(calculator.output)
        }
    }
    
    @IBAction func multiplyBtn(_ sender: Any) {
        if(calculator.operationTapped(operation: "*")) {
            outputLabel.text = "0"
        } else {
            outputLabel.text = String(calculator.output)
        }
    }
    
    @IBAction func subtractBtn(_ sender: Any) {
        if(calculator.operationTapped(operation: "-")) {
            outputLabel.text = "0"
        } else {
            outputLabel.text = String(calculator.output)
        }
    }
    
    @IBAction func additionBtn(_ sender: Any) {
        if(calculator.operationTapped(operation: "+")) {
            outputLabel.text = "0"
        } else {
            outputLabel.text = String(calculator.output)
        }
    }
    
    @IBAction func equalBtn(_ sender: Any) {
        calculator.operationTapped(operation: "=")
        outputLabel.text = String(calculator.output)
    }

    @IBAction func decimalBtn(_ sender: Any) {
        outputLabel.text = calculator.numberTapped(number: ".");
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

