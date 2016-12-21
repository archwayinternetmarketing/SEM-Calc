//
//  estimatedClickViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/19/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class estimatedClickViewController: UIViewController {

    
    @IBOutlet weak var mediaCostTextField: UITextField!
    @IBOutlet weak var CPCTextField: UITextField!
    
    var estimatedClicks = 0.0
    var finalEstimatedClicks = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(mediaCostTextField.text!)!
        let opt2 = Double(CPCTextField.text!)!
        
        estimatedClicks = opt1  /  opt2 
        finalEstimatedClicks = String(format:"%.2f", estimatedClicks)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your Estimated Clicks is: \(finalEstimatedClicks)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.mediaCostTextField.text = ""
            self.CPCTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
    }
    

}
