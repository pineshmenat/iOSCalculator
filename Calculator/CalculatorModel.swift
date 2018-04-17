//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Menat Pinesh I. on 4/16/18.
//  Copyright © 2018 Ammar Al-Qaraghuli. All rights reserved.
//

import Foundation

class Calculator {
    func Calculator() {
    
    }
    var output:Double = 0.0
    var operation1:Character = " "
    var operation2:Character = " "
    var decimal:Bool = false
    var negate:Bool = false
    var num1:Double = 0.0
    var num2:Double = 0.0
    
    func calculate(operation:Character) -> Double {
        switch operation {
        case "+":
            
            break;
        case "-":
            
            break
        case "*":
            
            break
        case "/":
            
            break
        case "%":
            
            break
        default:
            break
        }
        return output
    }
    
    func numberTapped(number:Character) -> Double{
        if(operation1 == " ") {
            return appendNum1(number: number)
        }else {
            return appendNum2(number: number)
        }
    }
    
    func appendNum1(number: Character) -> Double {
        num1 = num1*10 + Double(String(number))!
        return num1
    }
    
    func appendNum2(number: Character) -> Double {
        num2 = num2*10 + Double(String(number))!
        return num2
    }
    
    func operationTapped(operation:Character) -> Bool {
        if(operation1 == " ") {
            operation1 = operation
            return true
        }else {
            if(num2 == 0.0) {
                operation1 = operation
            }else {
                calculate(operation: operation1)
            }
            return false
        }
    }
    
    
    
    
    
    
    
}
