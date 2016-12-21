//
//  impressionsViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/19/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class impressionsViewController: UIViewController {

    
    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var cpmTextField: UITextField!
    
    var impressions = 0.0
    var finalImpressions = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(costTextField.text!)!
        let opt2 = Double(cpmTextField.text!)!
        
        impressions = opt1 / opt2 * 1000
        finalImpressions = String(format:"%.2f", impressions)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "You have \(impressions) impressions.", preferredStyle: UIAlertControllerStyle.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (alert) in
            self.costTextField.text = ""
            self.cpmTextField.text = ""
            
            
            
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
    }
    

}
