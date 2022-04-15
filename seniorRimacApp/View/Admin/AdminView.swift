//
//  AdminView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 12.04.2022..
//

import SwiftUI

struct AdminView: View {
    @ObservedObject var userVM: UserViewModel
    @ObservedObject var adminVM : AdminViewModel = AdminViewModel()
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all, edges: .top)
            VStack{
                Text("Admin page")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                ScrollView{
                    
                    NavigationLink(destination: AdminUserListView()) {
                        HStack{
                            Spacer()
                            
                            Image(systemName: "person.fill")
                                .font(.system(size: 100.0))
                                .foregroundColor(CustomColor.rimacBlue)
                                .padding(.trailing, 60)
                            
                            Spacer()
                            
                            Text("User list")
                                .foregroundColor(CustomColor.rimacBlue)
                                .font(.title)
                            
                            Spacer()
                        }
                        .frame(width: 350, height: 150)
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                    .padding(.top, 10)
                    
                    
                    NavigationLink(destination: AdminSensorListView(adminVM: adminVM)) {
                        HStack{
                            Spacer()
                            
                            Image(systemName: "sensor.tag.radiowaves.forward.fill")
                                .font(.system(size: 90.0))
                                .foregroundColor(CustomColor.rimacBlue)
                            
                            Spacer()
                            
                            Text("Sensor list")
                                .foregroundColor(CustomColor.rimacBlue)
                                .font(.title)
                            
                            Spacer()
                        }
                        .frame(width: 350, height: 150)
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                    .padding(.top, 10)
                }
                Spacer()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

