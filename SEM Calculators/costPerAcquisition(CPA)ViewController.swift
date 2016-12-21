//
//  costPerAcquisition(CPA)ViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/19/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class costPerAcquisition_CPA_ViewController: UIViewController {

    
    @IBOutlet weak var mediaCostTextField: UITextField!
    @IBOutlet weak var conversionsTextField: UITextField!
    
    var CPA = 0.0
    var finalCPA = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(mediaCostTextField.text!)!
        let opt2 = Double(conversionsTextField.text!)!
        
        CPA = opt1 / opt2
        finalCPA = String(format:"%.2f", CPA)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your CPA is: $\(finalCPA)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.mediaCostTextField.text = ""
            self.conversionsTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
    }
    

}
