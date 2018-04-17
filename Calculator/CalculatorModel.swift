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
    var decimal:Bool = false
    var negate:Bool = false
    var num1:String = "0"
    var num2:String = "0"
    
    func calculate(){
        output = 0.0
        switch operation1 {
        case "+":
            output = Double(num1)! + Double(num2)!;
            break
        case "-":
            output = Double(num1)! - Double(num2)!;
            break
        case "*":
            output = Double(num1)! * Double(num2)!;
            break
        case "/":
            output = Double(num1)! / Double(num2)!;
            break
        case "%":
            break
        case "=":
            break
        default:
            break
        }
    }
    
    func numberTapped(number:Character) -> String{
        if(operation1 == " ") {
            return appendNum1(number: number)
        }else {
            return appendNum2(number: number)
        }
    }
    
    func appendNum1(number: Character) -> String {
        if(num1 == ""){
            if(number == ".") {
                if(decimal) {
                } else {
                    decimal = true
                    num1 = "0" + String(number)
                }
            }else if(number == "-") {
                
            } else {
                num1 = String(number)
            }
        } else {
            if(number == ".") {
                if(decimal) {
                } else {
                    decimal = true
                    num1 = num1 + String(number)
                }
            }else if(number == "-") {
                if(negate) {
                    num1 = num1.replacingOccurrences(of: "-", with: "")
                    negate = false
                } else {
                 num1 = String(number) + num1
                    negate = true
                }
            } else {
                num1 = num1 + String(number)
            }
        }
        return num1
    }
    
    func appendNum2(number: Character) -> String {
        if(num2 == ""){
            if(number == ".") {
                if(decimal) {
                } else {
                    decimal = true
                    num2 = "0" + String(number)
                }
            }else if(number == "-") {
                
            } else {
                num2 = String(number)
            }
        } else {
            if(number == ".") {
                if(decimal) {
                } else {
                    decimal = true
                    num2 = num2 + String(number)
                }
            }else if(number == "-") {
                if(negate) {
                    num2 = num2.replacingOccurrences(of: "-", with: "")
                    negate = false
                } else {
                    num2 = String(number) + num2
                    negate = true
                }
            } else {
                num2 = num2 + String(number)
            }
        }
        return num2
    }
    
    func operationTapped(operation:Character) -> Bool{
        if(operation == "=") {
            if(num2 == "") {
                output = Double(num1)!
            }else {
                calculate()
                num1 = String(output)
                num2 = ""
                negate = false
                decimal = false
                
            }
            return false
        }
        else if(operation1 == " ") {
            operation1 = operation
            decimal = false
            negate = false
            return true
        }else{
            calculate()
            num1 = String(output)
            num2="0"
            decimal = false
            negate = false
            operation1 = operation
            return false
        }
    }
    
    func cancelTapped() {
        output = 0.0
        operation1 = " "
        decimal = false
        negate = false
        num1 = "0"
        num2 = "0"
    }

}
