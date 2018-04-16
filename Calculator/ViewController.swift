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
    
    @IBAction func zeroBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "0";
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "1";
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "2";
    }
    
    @IBAction func threeBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "3";
    }
    
    @IBAction func fourBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "4";
    }
    @IBAction func fiveBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "5";
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "6";
    }

    @IBAction func sevenBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "7";
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "8";
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + "9";
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        outputLabel.text = "0";
    }
    
    @IBAction func negateBtn(_ sender: Any) {
        outputLabel.text = "-" + outputLabel.text!;
    }
    
    @IBAction func percentBtn(_ sender: Any) {
        
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        
    }
    
    @IBAction func multiplyBtn(_ sender: Any) {
        
    }
    
    @IBAction func subtractBtn(_ sender: Any) {
        
    }
    
    @IBAction func additionBtn(_ sender: Any) {
        
    }
    
    @IBAction func equalBtn(_ sender: Any) {
    }

    @IBAction func decimalBtn(_ sender: Any) {
        outputLabel.text = outputLabel.text! + ".";
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

