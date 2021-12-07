//
//  BuildingRow.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/5/21.
//

import SwiftUI

struct BuildingRow: View {
    var building: Building
    
    var body: some View {
        HStack{
            building.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(building.name)
            Spacer()
        }
    }
}

struct BuildingRow_Previews: PreviewProvider {
    static var previews: some View {
        BuildingRow(building: buildings[0])
    }
}
