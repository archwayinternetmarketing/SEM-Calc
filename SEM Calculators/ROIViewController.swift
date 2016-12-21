//
//  ROIViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/21/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class ROIViewController: UIViewController {

    @IBOutlet weak var revenueTextField: UITextField!
    @IBOutlet weak var mediaCostTextField: UITextField!
    @IBOutlet weak var feesTextField: UITextField!
    
    var roi = 0.0
    var finalROI = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
   
    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        let opt1 = Double(revenueTextField.text!)!
        let opt2 = Double(mediaCostTextField.text!)!
        let opt3 = Double(feesTextField.text!)!
        
       roi = opt1 / (opt2 + opt3)
        finalROI = String(format:"%.2f", roi)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your ROI is: $\(finalROI)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.revenueTextField.text = ""
            self.mediaCostTextField.text = ""
            self.feesTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
    }

}
