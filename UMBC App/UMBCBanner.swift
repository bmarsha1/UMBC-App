//
//  SwiftUIView.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/6/21.
//

import SwiftUI

struct UMBCBanner: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        GeometryReader{geo in
            Image(colorScheme == .light ? "UMBC Logo" : "UMBC Logo Yellow")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct UMBCBanner_Previews: PreviewProvider {
    static var previews: some View {
        UMBCBanner()
    }
}
