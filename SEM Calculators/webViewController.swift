//
//  webViewController.swift
//  SEM Calculators
//
//  Created by Jennifer Wilson on 12/21/16.
//  Copyright © 2016 Jennifer Wilson. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL (string: "https://www.google.com/");
        let requestObj = NSURLRequest(url: url! as URL);
        myWebView.loadRequest(requestObj as URLRequest);
        
        // Do any additional setup after loading the view.
    }

    

}
