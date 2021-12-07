//
//  ContentView.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/2/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var authenticated = false;
    var body: some View {
        if self.authenticated {
            MainView()
        } else {
            LoginScreen(loggedIn: $authenticated)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
