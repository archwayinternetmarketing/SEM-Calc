//
//  efficiency%ViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/21/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class efficiency_ViewController: UIViewController {

    @IBOutlet weak var CTRTextField: UITextField!
    @IBOutlet weak var CRTextField: UITextField!
   
   var eRate = 0.0
    var finalERate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        let opt1 = Double(CTRTextField.text!)!
        let opt2 = Double(CRTextField.text!)!
        
        eRate = (opt1/100) * (opt2/100 )
        finalERate = String(format:"%.2f", eRate)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your Efficiency Rate is: %\(finalERate)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.CTRTextField.text = ""
            self.CRTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
    }
    

}
