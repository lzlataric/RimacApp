//
//  LogInView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 15.02.2022..
//

import SwiftUI

struct LogInView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLogged : Bool = false
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo2")
                    .resizable()
                    .frame(width: 300, height: 100)
                
                Spacer()
                
                Text("Welcome")
                    .frame(width: 150, alignment: .center)
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                Group{
                    TextField("", text: $username)
                        .frame(width: 250, height: 30)
                        .foregroundColor(Color.white)
                        .placeholder(when: username == "") {
                            Text("Email").foregroundColor(.white)
                        }
                    Divider()
                        .frame(width: 250, height: 2)
                        .background(Color.white)
                        .offset(x: 0, y: -8)
                    
                    SecureField("Password", text: $password)
                        .frame(width: 250, height: 30)
                        .foregroundColor(Color.white)
                        .placeholder(when: password == "") {
                            Text("Password").foregroundColor(.white)
                        }
                        .padding(.top, 10)
                    Divider()
                        .frame(width: 250, height: 2)
                        .background(Color.white)
                        .offset(x: 0, y: -8)
                    
                    
                    Button("Login") {
                        // Login
                        print("Login")
                        
                        self.isLogged = true
                        
                        
                    }
                    .buttonStyle(LoginButton())
                    .padding(.top, 25)
                }
                Spacer()
                
                Group{
                    Button("Forgotten password?") {
                        // Login
                        print("Forgotten pass")
                    }
                    .frame(width: 200, alignment: .center)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    Divider()
                        .frame(width: 140, height: 1)
                        .background(Color.white)
                        .offset(x: 0, y: -11)
                }
                Group{
                Spacer()
                Spacer()
                Spacer()
                }
            }
            if self.isLogged{
                UserTabView()
            }
        }
        
        
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
