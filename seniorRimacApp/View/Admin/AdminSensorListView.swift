//
//  AdminSensorListView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import SwiftUI

struct AdminSensorListView: View {
    @ObservedObject var adminVM : AdminViewModel
    @State private var showingSheet = false
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all)
            VStack{
                Text("Sensors")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    
                    //Spacer()
            
                ScrollView{
                    ForEach(adminVM.sensors){ one in
                        if #available(iOS 15.0, *) {
                            NavigationLink(destination: CreateToleraneView(adminVM: adminVM, sensorId: one.sensors.id)) {
                                HStack{
                                    
                                    Image(systemName: "sensor.tag.radiowaves.forward.fill")
                                        .font(.system(size: 60.0))
                                        .foregroundColor(CustomColor.rimacBlue)
                                        .padding(.leading, 30)
                                    
                                    Spacer()
                                    
                                    Text("\(one.sensors.name)")
                                        .foregroundColor(CustomColor.rimacBlue)
                                        .font(.title)
                                        .padding(.trailing, 60)
                                }
                                .frame(width: 350, height: 100)
                                .background(Color.white)
                                .cornerRadius(20)
                                
                            }
                        } else {
                            // Fallback on earlier versions
                        }
                    }
                }
                
                .frame(height: 550)
                Spacer()
                
                VStack(alignment: .trailing){
                Button("New sensor") {
                    showingSheet.toggle()
                }
                .frame(width: 120, height: 50)
                .background(Color.white)
                .foregroundColor(CustomColor.rimacBlue)
                .cornerRadius(15)
                .sheet(isPresented: $showingSheet) {
                    if #available(iOS 15.0, *) {
                        SensorSheet(adminVM: adminVM)
                    } else {
                        // Fallback on earlier versions
                    }
                        }
            }
            }
            Spacer()
        }
        .onAppear{
            adminVM.sensors = []
            adminVM.getSensors()
        }
        .navigationTitle("")
        //.navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}


