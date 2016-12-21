//
//  estimatedClicks(CPM)ViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/20/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class estimatedClicks_CPM_ViewController: UIViewController {

    @IBOutlet weak var impressionsTextField: UITextField!
    @IBOutlet weak var CTRateTextField: UITextField!
    
    var cpm = 0.0
    var finalCPM = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(impressionsTextField.text!)!
        let opt2 = Double(CTRateTextField.text!)!
        
        cpm = opt1 * (opt2 / 100)
        finalCPM = String(format:"%.2f", cpm)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your CPM is: \(finalCPM)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.impressionsTextField.text = ""
            self.CTRateTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
    }
    

}
