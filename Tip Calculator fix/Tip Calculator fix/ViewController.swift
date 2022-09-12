//
//  ViewController.swift
//  Tip Calculator fix
//
//  Created by Brian Baird on 9/8/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BillAmounttextfield: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
//      Get bill amount from text field input
        let bill = Double(BillAmounttextfield.text!) ?? 0
        
//      Get total tip by multiplying tip an tip percentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
    
//    Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)

//    Update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

