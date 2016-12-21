//
//  effectiveCostPerThousandImpressions(ECPM)ViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/19/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class effectiveCostPerThousandImpressions_ECPM_ViewController: UIViewController {
    
    @IBOutlet weak var revenueTextField: UITextField!
    @IBOutlet weak var impressionsTextField: UITextField!
    
    var ECPMI = 0.0
    var finalECPMI = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonPressed(_ sender: UIButton) {
        
        let opt1 = Double(revenueTextField.text!)!
        let opt2 = Double(impressionsTextField.text!)!
        
        ECPMI = opt1 / opt2 * 1000
        finalECPMI = String(format:"%.2f", ECPMI)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your ECPM is: $\(finalECPMI)", preferredStyle: UIAlertControllerStyle.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (alert) in
            self.revenueTextField.text = ""
            self.impressionsTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
        
    }
    

}
