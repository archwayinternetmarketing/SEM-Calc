//
//  estimatedConversionsViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/20/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class estimatedConversionsViewController: UIViewController {

    
    @IBOutlet weak var clicksTextField: UITextField!
    @IBOutlet weak var conversionRateTextField: UITextField!
    
    var ec = 0.0
    var finalEC = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(clicksTextField.text!)!
        let  opt2 = Double(conversionRateTextField.text!)!
        
        ec = opt1 * (opt2 / 100)
        finalEC = String(format:"%.2f", ec)
        
        let alert = UIAlertController(title: "Calculation Complete", message: "Your Estimated Conversion is: $\(finalEC)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.clicksTextField.text = ""
            self.conversionRateTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
    }
    
    

}
