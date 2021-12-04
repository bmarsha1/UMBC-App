//
//  CircleImage.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/4/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Building")
            .resizable()
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .frame(width: 250, height: 250)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
