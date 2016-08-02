//
//  MapViewController.swift
//  myFavoritePlaces
//
//  Created by Angelica Bato on 8/1/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    
    var myLocations:[Location] = []
    var currentLocationOnDeck:Location!
    var currentLocationInt:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLocations = Location.createDefaultLocations()
        let int = Int(arc4random_uniform(UInt32(myLocations.count)))
        currentLocationInt = int
        currentLocationOnDeck = myLocations[int]

        locationNameLabel.text = currentLocationOnDeck.name
        funFactLabel.text = currentLocationOnDeck.funFact
        centerOnLocation(currentLocationOnDeck.location, mapview: myMapView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func centerOnLocation(location: CLLocation, mapview: MKMapView) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, 1000, 1000)
        mapview.setRegion(coordinateRegion, animated: true)
        
        let annot = MKPointAnnotation()
        annot.coordinate = location.coordinate
        mapview.addAnnotation(annot)
    }
    
    @IBAction func changeLocationTapped(sender: AnyObject) {
        var randomInt = Int(arc4random_uniform(UInt32(myLocations.count)))
        while randomInt == currentLocationInt {
            randomInt = Int(arc4random_uniform(UInt32(myLocations.count)))
        }
        
        currentLocationInt = randomInt
        currentLocationOnDeck = myLocations[currentLocationInt]
        
        locationNameLabel.text = currentLocationOnDeck.name
        funFactLabel.text = currentLocationOnDeck.funFact
        centerOnLocation(currentLocationOnDeck.location, mapview: myMapView)
    }



}
