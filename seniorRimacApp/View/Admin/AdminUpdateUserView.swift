//
//  AdminUpdateUserView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import SwiftUI
import Apollo

struct AdminUpdateUserView: View {
    @ObservedObject var userVM : UserViewModel
    var id: GraphQLID
    var username: String
    var firstName: String
    var lastName: String
    
    @State private var showEnable = true
    
    @State var tfUserName: String = ""
    @State var tfFirstName: String = ""
    @State var tfLastName: String = ""
    
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all)
            VStack{
                Text(firstName + " " + lastName)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                
                Group{
                TextField("", text: $tfUserName)
                    .frame(width: 250, height: 30)
                    .foregroundColor(Color.white)
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .placeholder(when: tfUserName == "") {
                        Text(username).foregroundColor(.white)
                    }
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color.white)
                    .offset(x: 0, y: -8)
                
                TextField("", text: $tfFirstName)
                    .frame(width: 250, height: 30)
                    .foregroundColor(Color.white)
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .placeholder(when: tfFirstName == "") {
                        Text(firstName).foregroundColor(.white)
                    }
                    .padding(.top, 10)
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color.white)
                    .offset(x: 0, y: -8)
                
                TextField("", text: $tfLastName)
                    .frame(width: 250, height: 30)
                    .foregroundColor(Color.white)
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .placeholder(when: tfLastName == "") {
                        Text(lastName).foregroundColor(.white)
                    }
                    .padding(.top, 10)
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color.white)
                    .offset(x: 0, y: -8)
                }
                
                Toggle("Enable user", isOn: $showEnable)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    .frame(width: 200, height: 100, alignment: .center)
                    .foregroundColor(.white)
                      
                
                
                
                Button("Update") {
                    print(tfLastName)
                    if(tfUserName == ""){
                        tfUserName = username
                    }
                    if(tfLastName == ""){
                        tfLastName = lastName
                    }
                    if(tfFirstName == ""){
                        tfFirstName = firstName
                    }
                    userVM.updateUser(id: id, username: tfUserName, firstName: tfFirstName, lastName: tfLastName)
                    
                    if(showEnable == true){
                        userVM.enableUser(id: id)
                    }else{
                        userVM.disableUser(id: id)
                    }
                }
                .frame(width: 120, height: 50)
                .background(Color.white)
                .foregroundColor(CustomColor.rimacBlue)
                .cornerRadius(15)
                
                Spacer()
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}
