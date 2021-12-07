//
//  MapView.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/4/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        )
        uiView.setRegion(region, animated: true)
        uiView.showsBuildings = true
        uiView.pointOfInterestFilter = MKPointOfInterestFilter.excludingAll
        uiView.showsUserLocation = true
        for building in buildings{
            uiView.addAnnotation(BuildingAnnotation(building: building))
        }
    }
}

class BuildingAnnotation: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let building : Building
    
    init(building: Building){
        self.title = building.name
        self.subtitle = ""
        self.coordinate = building.locationCoordinate
        self.building = building
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 39.25296, longitude: -76.71252))
    }
}
