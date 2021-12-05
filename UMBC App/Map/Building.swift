//
//  Building.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/5/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Building: Hashable, Codable, Identifiable {
    var id : Int
    var name: String
    var phone: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable{
        var longitude: Double
        var latitude: Double
    }
}
