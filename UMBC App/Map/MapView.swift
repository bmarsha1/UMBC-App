//
//  MapView.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/4/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate : CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(
            coordinateRegion: $region,
            annotationItems: buildings
        ) {item in
            MapAnnotation (
                coordinate: item.locationCoordinate,
                content: {
                    Image(systemName: "pin.circle.fill").foregroundColor(.red)
                    Text(item.name).font(.system(size: 10))
                }
            )
        }
            .onAppear {
                setRegion(coordinate)
            }
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 39.25296, longitude: -76.71252))
    }
}
