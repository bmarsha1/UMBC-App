//
//  ClassRow.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/5/21.
//

import SwiftUI

struct ClassRow: View {
    var course: Class
    var body: some View {
        VStack(alignment: .leading){
            Text(course.name)
                .font(.title)
            HStack{
                ForEach(course.days, id: \.self) {
                    Text("\($0.description)")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                }
                Text("\(course.start.hour):\(String(format: "%02d", course.start.minute))-\(course.end.hour):\(String(format: "%02d", course.end.minute))")
                    .font(.system(size: 15))
            }
            Text(course.building!.name)
                .font(.system(size: 15))
                .fontWeight(.bold)
            Text(course.room)
                .font(.system(size: 15))
        }
    }
}

struct ClassRow_Previews: PreviewProvider {
    static var previews: some View {
        ClassRow(course: schedule[0])
    }
}
