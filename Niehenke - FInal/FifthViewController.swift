//
//  FifthViewController.swift
//  Niehenke - FInal
//
//  Created by Adam Niehenke on 5/3/20.
//  Copyright © 2020 Adam Niehenke. All rights reserved.
//

import UIKit
import CoreLocation

class FifthViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var distanceLabel: UILabel!
    
     let locMan: CLLocationManager = CLLocationManager()
          var startLocation: CLLocation!
       
       let kshopLatitude: CLLocationDegrees = 40.18
          let kshopLongitude: CLLocationDegrees = 79.32
          func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
              
              //Get Location
              let newLocation: CLLocation=locations[0]
              //Debug
              NSLog("Debug")
              
              //Horizontal accuracy less than 0 means failure at GPS level
              if newLocation.horizontalAccuracy >= 0 {
               
                  let greensburg:CLLocation = CLLocation(latitude: kshopLatitude, longitude: kshopLongitude)
                  
                  //Difference between locations
                  let delta:CLLocationDistance = greensburg.distance(from: newLocation)
                  
                  let miles:Double = (delta * 0.000621371) + 0.5 //meters to rounded miles
                  
                  if miles < 2{
                      //Stop
                      locMan.stopUpdatingLocation()
       
                      distanceLabel.text = "Play On!"
                  }else {
                      let commaDelimited: NumberFormatter = NumberFormatter()
                      commaDelimited.numberStyle = NumberFormatter.Style.decimal
                      
                      distanceLabel.text=commaDelimited.string(from: NSNumber(value: miles))!+" miles to nearest card shop"
    
                }
                
                
            }
            
    }
    @IBAction func swipe(_ sender: Any) {
         if let url = URL(string:"https://www.google.com/maps/place/Westmoreland+Mall/@40.3005725,-79.510401,17z/data=!3m1!4b1!4m5!3m4!1s0x8834d1c93d5418bd:0xc1ba89ec4273a011!8m2!3d40.3005725!4d-79.5082123") {
               UIApplication.shared.open(url, options:[:])    }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        locMan.delegate = self
                    
                    //More accurate
                    locMan.desiredAccuracy = kCLLocationAccuracyThreeKilometers
                    locMan.distanceFilter = 1609; //a mile (in meters)
                        
                    //Authorization
                    locMan.requestWhenInUseAuthorization()
              
                    //GPS activation
                    locMan.startUpdatingLocation()
                    startLocation = nil
    }

}
