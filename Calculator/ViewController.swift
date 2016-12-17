//
//  ViewController.swift
//  Calculator
//
//  Created by Stephen on 12/16/16.
//  Copyright © 2016 Stephen LaMacchia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!			//Type: property aka instance variable, type is UILabel!
     
     var userIsInTheMiddleOfTyping = false		//EVERY property requires initial value
     
     @IBAction func touchDigit(_ sender: UIButton) {	//sends to self, a method
          let digit = sender.currentTitle!
          if userIsInTheMiddleOfTyping {
               let textCurrentlyInDisplay = display!.text!
               display!.text = textCurrentlyInDisplay + digit
          } else {
               display!.text = digit
          }
          userIsInTheMiddleOfTyping = true
                                                //text is a property on UILabel and is an optional string
        }
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
                
        	}
            
        }
    }
}
