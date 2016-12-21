//
//  ROASViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/21/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class ROASViewController: UIViewController {

    @IBOutlet weak var revenueTexrField: UITextField!
    @IBOutlet weak var mediaCostTextField: UITextField!
    
    var roas = 0.0
    var finalROAS = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        let opt1 = Double(revenueTexrField.text!)!
        let opt2 = Double(mediaCostTextField.text!)!
        
        roas = opt1 / opt2
        finalROAS = String(format:"%.2f", roas)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your ROAS is: $\(finalROAS)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.revenueTexrField.text = ""
            self.mediaCostTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
    }
    

}
