//
//  ContentView.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/2/21.
//

import SwiftUI

struct RACInfo: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("Retriever Activities Center")
                    .font(.title)
                Divider()
                Text("Information")
                    .font(.title2)
                Text("Description here")
            }
            
        }
        .padding()
        Spacer()
    }
}

struct RACInfo_Previews: PreviewProvider {
    static var previews: some View {
        RACInfo()
    }
}

