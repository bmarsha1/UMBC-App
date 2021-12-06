//
//  LocationManager.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/5/21.
//

import Foundation
import CoreLocation

class LocationManager : NSObject, CLLocationManagerDelegate{
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
