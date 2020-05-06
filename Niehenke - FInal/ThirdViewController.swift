//
//  ThirdViewController.swift
//  Niehenke - FInal
//
//  Created by Adam Niehenke on 5/2/20.
//  Copyright © 2020 Adam Niehenke. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var strong: UITextField!
    
    @IBOutlet weak var cute: UITextField!
    
    @IBOutlet weak var cool: UITextField!
    
    @IBOutlet weak var rare: UITextField!
    
    @IBOutlet weak var fave: UITextField!
    
    @IBOutlet weak var brad: UITextField!
    
    @IBOutlet weak var team: UITextView!
    

    
    
    @IBAction func makeTeam(_ sender: Any) {
        //Alert the user of a successful team creation
        let alert = UIAlertController(title:"Success!", message: "Your team has been created successfully!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("Awesome! Show Me!", comment: "default action"), style: . `default`, handler: { _ in}))
        
        self.present(alert,animated: true, completion: nil)

        
        //Output the pokemon into a team
        team.text = "Your team includes the strong " + strong.text! + ", the cute " + cute.text! + ", the cool " + cool.text! + ", the rare " + rare.text! + ", your favorite " + fave.text! + ", and last but not least the most Brad-like " + brad.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Close keyboard with a tap 
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
               view.addGestureRecognizer(tap)
           }
           @objc func dismissKeyboard(){
               view.endEditing(true)
           }
    
    


}
