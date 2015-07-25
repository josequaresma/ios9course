//
//  ViewController.swift
//  Hello World
//
//  Created by Jose Quaresma on 25/07/15.
//  Copyright © 2015 Jose Quaresma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var humanYearsLabel: UILabel!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func submit(sender: AnyObject) {
        
        print("Button tapped")
        
        if (textField.text! != "") {
            
            let catYear:Int? = Int(textField.text!)
            
            if ((catYear) != nil) {
                humanYearsLabel.text = "Your cat is \(catYear!*7) cat years old."
            } else {
                humanYearsLabel.text = "'" + textField.text! + "' is not an integer. Please try again"
            }
        } else {
            humanYearsLabel.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello Jose!")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

