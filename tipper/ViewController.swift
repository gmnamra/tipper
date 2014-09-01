//
//  ViewController.swift
//  tipper
//
//  Created by arman on 8/31/14.
//  Copyright (c) 2014 arman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var bill_field: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
   
    @IBOutlet weak var tipController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = "$3.14"
        totalLabel.text = "0.0"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnEditingChanged(sender: AnyObject) {
        println("User Changed ")
//        var ba_int = totalLabel.text.toInt()
        var tip_percentages = [0.15,0.18,0.20]
        var tipPercentage = tip_percentages[tipController.selectedSegmentIndex]
        
        var billAmount = bill_field.text.doubleValue()

        var tip = billAmount * tipPercentage00
        var total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"

        tipLabel.text = String(format: " $%.2f", tip);
        totalLabel.text = String(format: " $%.2f", total);

        
    }

    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

