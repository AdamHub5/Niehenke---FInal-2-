//
//  FourthViewController.swift
//  Niehenke - FInal
//
//  Created by Adam Niehenke on 5/2/20.
//  Copyright © 2020 Adam Niehenke. All rights reserved.
//

import UIKit
import WebKit // Import webkit functionality


class FourthViewController: UIViewController {

    
    @IBAction func openSite(_ sender: Any) {
    
        if let url = URL(string:"https://www.serebii.net/index2.shtml") {
        UIApplication.shared.open(url, options:[:])    }
    }
    
    
    @IBOutlet weak var webView: WKWebView!
    
        override func viewDidLoad() {
        super.viewDidLoad()

         let myURL = URL(string:"https://www.serebii.net/index2.shtml")
               let myRequest = URLRequest(url: myURL!); webView.load(myRequest)
    }
}
