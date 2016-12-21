//
//  clickThruRate%ViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/19/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class clickThruRate_ViewController: UIViewController {

    
    @IBOutlet weak var clickstextField: UITextField!
    @IBOutlet weak var impressionsTextField: UITextField!
    
    var clickThruRate = 0.0
    var finalCTR = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(clickstextField.text!)!
        let opt2 = Double(impressionsTextField.text!)!
        
        clickThruRate = opt1 / opt2
        finalCTR = String(format:"%.2f", clickThruRate)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your click thru rate is: \(finalCTR)%", preferredStyle: UIAlertControllerStyle.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (alert) in
            self.clickstextField.text = ""
            self.impressionsTextField.text = ""
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
    }
    

}
