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

    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var locationImageView: UIImageView!
    @IBOutlet weak var funFactLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLocations = Location.createDefaultLocations()
        let int = Int(arc4random_uniform(UInt32(myLocations.count)))
        currentLocationInt = int
        currentLocationOnDeck = myLocations[int]
        
        currentImageInt = 0
        locationNameLabel.text = currentLocationOnDeck.name
        locationImageView.image = UIImage(named: currentLocationOnDeck.imageNames[0])
        funFactLabel.text = currentLocationOnDeck.funFact

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func changeImageButtonTapped(sender: AnyObject) {
        var randomInt = Int(arc4random_uniform(UInt32(currentLocationOnDeck.imageNames.count)))
        
        while randomInt == currentImageInt {
            randomInt = Int(arc4random_uniform(UInt32(currentLocationOnDeck.imageNames.count)))
        }
        
        currentImageInt = randomInt
        locationImageView.image = UIImage(named: currentLocationOnDeck.imageNames[currentImageInt])
    }
    
    @IBAction func changeLocationTapped(sender: AnyObject) {
        var randomInt = Int(arc4random_uniform(UInt32(myLocations.count)))
        while randomInt == currentLocationInt {
            randomInt = Int(arc4random_uniform(UInt32(myLocations.count)))
        }
        
        currentLocationInt = randomInt
        currentLocationOnDeck = myLocations[currentLocationInt]
        
        locationNameLabel.text = currentLocationOnDeck.name
        locationImageView.image = UIImage(named: currentLocationOnDeck.imageNames[0])
        funFactLabel.text = currentLocationOnDeck.funFact
    }
    

}

