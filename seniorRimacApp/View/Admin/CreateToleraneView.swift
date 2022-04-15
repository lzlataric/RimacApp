//
//  CreateToleraneView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import SwiftUI

@available(iOS 15.0, *)
struct CreateToleraneView: View {
    @Environment(\.dismiss) var dismiss
    @State private var limit: String = ""
    @ObservedObject var adminVM : AdminViewModel
    var sensorId : String
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all)
            VStack{
                
                Text("Create new tolerance")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Spacer()
                
                Group{
                TextField("", text: $limit)
                    .frame(width: 250, height: 30)
                    .foregroundColor(Color.white)
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .placeholder(when: limit == "") {
                        Text("Limit").foregroundColor(.white)
                    }
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color.white)
                    .offset(x: 0, y: -8)
                
                
                Spacer()
                
                Group{
                Button("Create") {
                    adminVM.createTolerance(input: Double(limit) ?? 0, id: sensorId)
                    
                    //userVM.getUsers()
                    dismiss()
                }
                .buttonStyle(LoginButton())
                .disabled(self.limit.isEmpty)
                
                }
            }
        }

}

    }
}
