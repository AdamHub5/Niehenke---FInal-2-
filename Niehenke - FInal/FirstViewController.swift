//
//  FirstViewController.swift
//  Niehenke - FInal
//
//  Created by Adam Niehenke on 5/2/20.
//  Copyright © 2020 Adam Niehenke. All rights reserved.
//

import UIKit
import AudioToolbox
class FirstViewController: UIViewController {


    @IBOutlet weak var pichu: UIImageView!
    
    @IBAction func animate(_ sender: Any) {
        //Start or Stop the Animation
        if (pichu.isAnimating)
        {
            pichu.stopAnimating()
        }else
        {
            pichu.startAnimating()
        }
    }
    
    
    @IBAction func music(_ sender: Any) {
        var national: SystemSoundID = 0
        let
        soundFile:String=Bundle.main.path(forResource: "Music",ofType: "mp3")!
        let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &national)
        AudioServicesPlaySystemSound(national)
        //Locate Music file and play it
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let gifAnimation: [UIImage] = [
    UIImage(named: "frame_0")!,
    UIImage(named: "frame_1")!,
    UIImage(named: "frame_2")!,
    UIImage(named: "frame_3")!,
    UIImage(named: "frame_4")!,
    UIImage(named: "frame_5")!,    ]
    //Frames for the animation
    pichu.animationImages=gifAnimation
        pichu.animationDuration=1.0
    }
}

