//
//  Location.swift
//  myFavoritePlaces
//
//  Created by Angelica Bato on 8/1/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import CoreLocation

struct Location {
    var name:String = ""
    var funFact:String = ""
    var location:CLLocation = CLLocation(latitude: 0.0, longitude: 0.0)
    var imageNames:[String] = []
    
    init(name:String, funFact:String, location:CLLocation) {
        self.name = name
        self.funFact = funFact
        self.location = location
        self.imageNames = []
    }
    
    static func createDefaultLocations() -> [Location] {
        let location1:CLLocation = CLLocation(latitude: 48.858, longitude: 2.295)
        var eiffel = Location(name: "The Eiffel Tower", funFact: "The Eiffel Tower was built for the 1889 Paris Exposition and was not intended to be permanent.", location: location1)
        eiffel.imageNames = ["eiffel1", "eiffel2", "eiffel3"]
        
        let location2:CLLocation = CLLocation(latitude: 29.979, longitude: 31.134)
        var pyramids = Location(name: "The Great Pyramids of Giza", funFact: "The pyramid is estimated to have around 2,300,000 stone blocks that weigh from 2 to 30 tons each and there are even some blocks that weigh over 50 tons.", location: location2)
        pyramids.imageNames = ["giza1", "giza2", "giza3"]
        
        let location3:CLLocation = CLLocation(latitude: 40.748, longitude: -73.986)
        var empireState = Location(name: "The Empire State of Building", funFact: "The building itself cost $24,718,000 to build, when the cost of the land is included this figure climbs to $40,948,900. This cost was less than half of the total anticipated cost due to the Great Depression.", location: location3)
        empireState.imageNames = ["empire1", "empire2", "empire3"]
        
        return [eiffel, pyramids, empireState]
    }
    
    
}