//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Mo Student on 12/25/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
        
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        let tipSplitter = [1.0, 2.0, 3.0, 4.0, 5.0]
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = bill + tip
        let split = total / tipSplitter [splitControl.selectedSegmentIndex]
        view.endEditing(true)
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitLabel.text = String(format: "$%.2f", split)
        
    }
    
}

