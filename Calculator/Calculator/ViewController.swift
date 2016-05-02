//
//  ViewController.swift
//  Calculator
//
//  Created by SimonHuang on 2016/4/30.
//  Copyright © 2016年 SimonHuang. All rights reserved.
//


// import a module, UIKit: all the UI components
import UIKit

// ViewController inherited from  UIViewController 
class ViewController: UIViewController {

//    // swift function, -> means return, arg: type
//    @IBAction func touchDigit(sender: UIButton, otherArg: Int) -> Double {
//        self.touchDigit(sender: someButton, otherArg: 5)
//    }
    
    @IBOutlet weak var display: UILabel!

    var userIsInTheMiddleOfTyping = false
    
    // swift function, -> means return, arg: type
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping{
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
            //        display!.text = nil (optional not set)
        }else{
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
        
        print("touch \(digit) digit")
    }
    
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI) // M_PI
            }
        }
    }
}

