//
//  SecondViewController.swift
//  Niehenke - FInal
//
//  Created by Adam Niehenke on 5/2/20.
//  Copyright © 2020 Adam Niehenke. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var image: UIImageView!
//Reveal answer with this button
    @IBAction func reveal(_ sender: Any) {
        if image.isHidden == true {
            image.isHidden = false
            text.isHidden = false
        } else
        {
            image.isHidden = true
            text.isHidden = true
        }
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Make the answer hiden by default
        image.isHidden = true;
        text.isHidden = true;

    }


}

