//
//  Location.swift
//  MockWeather
//
//  Created by Bruno Campos on 2/20/18.
//  Copyright © 2018 Bruno Campos. All rights reserved.
//

import CoreLocation

class Location {//latitude and longitude
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
