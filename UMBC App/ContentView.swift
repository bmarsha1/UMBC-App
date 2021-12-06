//
//  ContentView.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/2/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        TabView {
            ClassList()
                .tabItem() {
                    Image(systemName: "calendar")
                    Text("Schedule")
                }
            BuildingList()
                .tabItem() {
                    Image(systemName: "building.columns.fill")
                    Text("Buildings")
                }
            MapView(coordinate: CLLocationCoordinate2D(latitude: 39.25296, longitude: -76.71252))
                .tabItem() {
                    Image(systemName: "map.fill")
                    Text("Map")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
