//
//  UserSheet.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import SwiftUI

@available(iOS 15.0, *)
struct UserSheet: View {
    @Environment(\.dismiss) var dismiss
    @State private var username: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var password: String = ""
    @ObservedObject var userVM : UserViewModel
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all)
            VStack{
                
                Text("Create new user")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Spacer()
                
                Group{
                TextField("", text: $username)
                    .frame(width: 250, height: 30)
                    .foregroundColor(Color.white)
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .placeholder(when: username == "") {
                        Text("Username").foregroundColor(.white)
                    }
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color.white)
                    .offset(x: 0, y: -8)
                
                TextField("", text: $firstName)
                    .frame(width: 250, height: 30)
                    .foregroundColor(Color.white)
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .placeholder(when: firstName == "") {
                        Text("First Name").foregroundColor(.white)
                    }
                    .padding(.top, 10)
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color.white)
                    .offset(x: 0, y: -8)
                
                TextField("", text: $lastName)
                    .frame(width: 250, height: 30)
                    .foregroundColor(Color.white)
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .placeholder(when: lastName == "") {
                        Text("Last Name").foregroundColor(.white)
                    }
                    .padding(.top, 10)
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color.white)
                    .offset(x: 0, y: -8)
                
                TextField("", text: $password)
                    .frame(width: 250, height: 30)
                    .foregroundColor(Color.white)
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .placeholder(when: password == "") {
                        Text("password").foregroundColor(.white)
                    }
                    .padding(.top, 10)
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color.white)
                    .offset(x: 0, y: -8)
                }
                Spacer()
                
                Group{
                Button("Create") {
                    userVM.createUser(username: username, firstName: firstName, lastName: lastName, password: password)
                    
                    //userVM.getUsers()
                    dismiss()
                }
                .buttonStyle(LoginButton())
                .disabled(self.username.isEmpty || self.firstName.isEmpty || self.lastName.isEmpty || self.password.isEmpty)
                
                }
            }
        }
    }
}

