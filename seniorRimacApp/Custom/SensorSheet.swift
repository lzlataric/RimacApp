//
//  SensorSheet.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import SwiftUI

@available(iOS 15.0, *)
struct SensorSheet: View {
        @Environment(\.dismiss) var dismiss
        @State private var name: String = ""
        @ObservedObject var adminVM : AdminViewModel
        var body: some View {
            ZStack{
                CustomColor.rimacBlue
                    .ignoresSafeArea(.all)
                VStack{
                    
                    Text("Create new sensor")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    Spacer()
                    
                    Group{
                    TextField("", text: $name)
                        .frame(width: 250, height: 30)
                        .foregroundColor(Color.white)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                        .placeholder(when: name == "") {
                            Text("Sensor name").foregroundColor(.white)
                        }
                    Divider()
                        .frame(width: 250, height: 2)
                        .background(Color.white)
                        .offset(x: 0, y: -8)
                    
                    
                    Spacer()
                    
                    Group{
                    Button("Create") {
                        adminVM.createSensor(name: name)
                        
                        //userVM.getUsers()
                        dismiss()
                    }
                    .buttonStyle(LoginButton())
                    .disabled(self.name.isEmpty)
                    
                    }
                }
            }
    
}

        }
}
