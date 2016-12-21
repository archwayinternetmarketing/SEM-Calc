//
//  costPerThousandImpressions(CPM)ViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/18/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//
//Cost Per Thousand Impressions (CPM) = Cost / Impressions x 1000

import UIKit


class costPerThousandImpressions_CPM_ViewController: UIViewController {

    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var impressionsTextField: UITextField!
    
    var cpm = 0.0
    var finalCPM = ""
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    
    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(costTextField.text!)!
        let opt2 = Double(impressionsTextField.text!)!
        
        cpm = opt1 / opt2 * 1000
        
        finalCPM = String(format:"%.2f", cpm)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "You CPM is: $\(finalCPM)", preferredStyle: UIAlertControllerStyle.alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            
            self.costTextField.text = ""
            self.impressionsTextField.text = ""
        }
        
        
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
    }
    

    

}
