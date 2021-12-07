//
//  LoginButton.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/6/21.
//

import SwiftUI

struct LoginButton: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .padding()
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(Color(red: 253/255, green: 179/255, blue: 20/255))
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
    }
}
