//
//  BuildingList.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/5/21.
//

import SwiftUI

struct BuildingList: View {
    var body: some View {
        NavigationView {
            List(buildings, id: \.id) { building in
                NavigationLink {
                    BuildingDetail(building: building)
                } label: {
                    BuildingRow(building: building)
                }
            }
            .navigationTitle("Buildings")
        }
    }
}

struct BuildingList_Previews: PreviewProvider {
    static var previews: some View {
        BuildingList()
    }
}
