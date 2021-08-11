//
//  ViewController.swift
//  Prework
//
//  Created by Ngoc Hoang on 11/08/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UITextField!
    @IBOutlet weak var tipControl: UISlider!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func selectTip(_ sender: UISlider) {
        let tipPerc = sender.value
        tipPercentageLabel.text = String(format: "%.0f%%", tipPerc)
    }
//    @IBAction func calculateTip(_ sender: Any) {
//        let bill = Double(billAmountTextField.text!) ?? 0
//        let tipPerc = Double(tipControl.value / 100)
//        let tip = bill * tipPerc
//        let total = bill + tip
//
//        tipAmountLabel.text = String(format: "$%.2f", tip)
//        totalLabel.text = String(format: "$.2f", total)
//    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPerc = Double(tipControl.value / 100)
        let tip = bill * tipPerc
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func tipCalculate(_ sender: UITextField) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPerc = Double(tipControl.value / 100)
        let tip = bill * tipPerc
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

