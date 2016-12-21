//
//  costPerClick(CPC)ViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/19/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class costPerClick_CPC_ViewController: UIViewController {

    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var clicksTextField: UITextField!
    
    var cpc = 0.0
    var finalcpc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    @IBAction func whenCalculateButtonTapped(_ sender: UIButton) {
        
        let opt1 = Double(costTextField.text!)!
        let opt2 = Double(clicksTextField.text!)!
        
        cpc = opt1 / opt2
        finalcpc = String(format:"%.2f", cpc)
        
        let alert = UIAlertController(title: "Calculation Complete!", message: "Your CPC is: $\(finalcpc)", preferredStyle: UIAlertControllerStyle.alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (alert) in
            
            self.costTextField.text = ""
            self.clicksTextField.text = ""
        }
        
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
    }
    

}
