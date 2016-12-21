//
//  conversionRateViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/21/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class conversionRateViewController: UIViewController {

    @IBOutlet weak var conversionTextField: UITextField!
    @IBOutlet weak var clicksTextField: UITextField!
    
    var cr = 0.0
    var finalCR = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        let opt1 = Double(conversionTextField.text!)!
        let opt2 = Double(clicksTextField.text!)!
        
        cr = opt1 / opt2
        finalCR = String(format:"%.2f", cr)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your conversion rate is: %\(finalCR)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.conversionTextField.text = ""
            self.clicksTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
    }
    

}
