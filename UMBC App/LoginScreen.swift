//
//  LoginScreen.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/6/21.
//

import SwiftUI

struct LoginScreen: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showingAlert : Bool = false
    @Binding var loggedIn : Bool
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
            VStack{
                UMBCBanner()
                    .frame(width: 300, height: 100.0)
                TextField("Email/Student ID", text: $username)
                    .foregroundColor(colorScheme == .light ? .black : .white)
                    .padding()
                    .background(colorScheme == .light ? Color(red: 240/255, green: 240/255, blue: 240/255) : Color(red: 10/255, green: 10/255, blue: 10/255))
                    .cornerRadius(5.0)
                    .padding([.leading, .bottom, .trailing], 20)
                    .autocapitalization(.none)
                SecureField("Password", text: $password)
                    .foregroundColor(colorScheme == .light ? .black : .white)
                    .padding()
                    .background(colorScheme == .light ? Color(red: 240/255, green: 240/255, blue: 240/255) : Color(red: 10/255, green: 10/255, blue: 10/255))
                    .cornerRadius(5.0)
                    .padding([.leading, .bottom, .trailing], 20)
                Button(action: {
                    if username == "test" && password == "test" {
                        loggedIn = true
                    }
                    else {
                        showingAlert = true
                    }
                }) {
                    LoginButton()
                }.alert("Invalid ID/Password", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) {}
            }
        }
    }
}

