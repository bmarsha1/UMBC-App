//
//  ClassList.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/5/21.
//

import SwiftUI

struct ClassList: View {
    var body: some View {
        NavigationView {
            List(schedule, id: \.id){item in
                NavigationLink {
                    BuildingDetail(building: item.building!)
                } label: {
                    ClassRow(course: item)
                }
            }
            .navigationTitle("Schedule")
        }
    }
}

struct ClassList_Previews: PreviewProvider {
    static var previews: some View {
        ClassList()
    }
}
