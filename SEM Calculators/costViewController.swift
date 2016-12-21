//
//  costViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/19/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class costViewController: UIViewController {

    
    @IBOutlet weak var impressionsTextField: UITextField!
    @IBOutlet weak var cpmTextField: UITextField!
    
    var cost = 0.0
    var finalCost = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(impressionsTextField.text!)!
        let opt2 = Double(cpmTextField.text!)!
        
        cost = opt1 / 1000 * opt2
        finalCost = String(format:"%.2f", cost)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Cost: $\(finalCost)", preferredStyle: UIAlertControllerStyle.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (action) in
            self.impressionsTextField.text = ""
            self.cpmTextField.text = ""
        }
        
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
        
    }
    

}
