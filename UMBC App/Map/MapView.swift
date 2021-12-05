//
//  MapView.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/4/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    var building: Building
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(
            coordinateRegion: $region,
            annotationItems: [building]
        ) {item in
            MapAnnotation (
                coordinate: building.locationCoordinate,
                content: {
                    Image(systemName: "pin.circle.fill").foregroundColor(.red)
                    Text(building.name).font(.system(size: 10))
                }
            )
        }
            .onAppear {
                setRegion(building.locationCoordinate)
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
        MapView(building: buildings[0])
    }
}
