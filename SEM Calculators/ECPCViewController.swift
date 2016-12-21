//
//  ECPCViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/19/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class ECPCViewController: UIViewController {

    @IBOutlet weak var revenueTextField: UITextField!
    @IBOutlet weak var clicksTextField: UITextField!
    
    var ECPC = 0.0
    var finalECPC = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(revenueTextField.text!)!
        let opt2 = Double(clicksTextField.text!)!
        
        ECPC = opt1 / opt2
        finalECPC = String(format:"%.2f", ECPC)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your ECPC is: $\(finalECPC)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.revenueTextField.text = ""
            self.clicksTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
        
    }
    

}
