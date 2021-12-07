//
//  MainView.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/6/21.
//

import SwiftUI
import MapKit

struct MainView: View {
    var body: some View {
        VStack {
            UMBCBanner()
                .frame(height: 20)
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
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
