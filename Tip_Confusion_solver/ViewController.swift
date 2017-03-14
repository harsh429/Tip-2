//
//  ViewController.swift
//  Tip_Confusion_solver
//
//  Created by Harsh on 3/13/17.
//  Copyright © 2017 Harsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Tipcontrol: UISegmentedControl!
    @IBOutlet weak var BillFileld: UITextField!
    @IBOutlet weak var TotalLable: UILabel!
    @IBOutlet weak var TipLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Tap_Sensation(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func CalculateTip(_ sender: Any) {
        
        let tiPercentages = [0.10, 0.2, 0.30]
        let bill = Double(BillFileld.text!) ?? 0
        let tip = bill * tiPercentages[Tipcontrol.selectedSegmentIndex]
        let total = bill + tip
        
        TipLable.text = String(format: "$%.2f", tip)
        TotalLable.text = String(format: "$%.2f", total)
        
    }
}

