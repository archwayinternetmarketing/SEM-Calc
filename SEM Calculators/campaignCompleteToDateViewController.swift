//
//  campaignCompleteToDateViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/21/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class campaignCompleteToDateViewController: UIViewController {

    @IBOutlet weak var CCRTextField: UITextField!
    @IBOutlet weak var TCRTextField: UITextField!
    
    var ccd = 0.0
    var finalccd = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        let opt1 = Double(CCRTextField.text!)!
        let opt2 = Double(TCRTextField.text!)!
        
        ccd = opt1 / opt2
        finalccd = String(format:"%.2f", ccd)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your % Campaign to Date is: %\(finalccd)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default) { (alert) in
            self.CCRTextField.text = ""
            self.TCRTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
    }
    

}
