//
//  ViewController.swift
//  myFavoritePlaces
//
//  Created by Angelica Bato on 8/1/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import CoreLocation

class DetailsViewController: UIViewController {

    var myLocations:[Location] = []
    var currentLocationOnDeck:Location!
    var currentImageInt:Int!
    var currentLocationInt:Int!
    
    //Place all your outlets here
    
    
    
    
    
    
    
    
    //////////
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        myLocations = Location.createDefaultLocations()
        let int = Int(arc4random_uniform(UInt32(myLocations.count)))
        currentLocationInt = int
        currentLocationOnDeck = myLocations[int]

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    // Connect your buttons below
    
    


}

