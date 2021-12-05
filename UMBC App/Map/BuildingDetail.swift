//
//  BuildingDetail.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/5/21.
//

import SwiftUI

struct BuildingDetail: View {
    var building : Building
    var body: some View {
        ScrollView{
            MapView(coordinate: building.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: building.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            VStack(alignment: .leading){
                Text(building.name)
                    .font(.title)
                Divider()
                Text("Information")
                    .font(.title2)
                Text("Phone number: \(building.phone)")
            }
            .padding()
            Spacer()
        }
        .navigationTitle(building.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BuildingDetail_Previews: PreviewProvider {
    static var previews: some View {
        BuildingDetail(building: buildings[0])
    }
}
