//
//  SensorPickerView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 22.02.2022..
//

import SwiftUI

struct SensorPickerView: View {
    var body: some View {
        NavigationView {
        ZStack
        {
            CustomColor.rimacBlue
                .ignoresSafeArea(.all, edges: .top)
            
            ScrollView{
                
                Text("Sensor list")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                
                HStack(spacing: 25){
                    VStack{
                        Spacer()
                        Image("pedal")
                            .resizable()
                            .frame(width: 70, height: 70)
                        Spacer()
                        Text("Accelerator pedal")
                            .font(.headline)
                            .foregroundColor(CustomColor.rimacBlue)
                        Spacer()
                    }
                    .frame(width: 150, height: 180)
                    .background(Color.white)
                    .cornerRadius(20)
                    
                    VStack{
                        Spacer()
                        Image("speedometer")
                            .resizable()
                            .frame(width: 70, height: 70)
                        Spacer()
                        Text("Speed")
                            .font(.headline)
                            .foregroundColor(CustomColor.rimacBlue)
                        Spacer()
                    }
                    .frame(width: 150, height: 180)
                    .background(Color.white)
                    .cornerRadius(20)
                }
                
                HStack(spacing: 25){
                    VStack{
                        Spacer()
                        Image("voltage")
                            .resizable()
                            .frame(width: 70, height: 70)
                        Spacer()
                        Text("Battery Voltage")
                            .font(.headline)
                            .foregroundColor(CustomColor.rimacBlue)
                        Spacer()
                    }
                    .frame(width: 150, height: 180)
                    .background(Color.white)
                    .cornerRadius(20)
                    
                    
                    VStack{
                        Spacer()
                        Image("temperature")
                            .resizable()
                            .frame(width: 70, height: 70)
                        Spacer()
                        
                        Text("Battery cell temperature")
                            .font(.headline)
                            .foregroundColor(CustomColor.rimacBlue)
                        
                        Spacer()
                        
                    }
                    .frame(width: 150, height: 180)
                    .background(Color.white)
                    .cornerRadius(20)
                }
                .padding(.top, 10)
                
                HStack(spacing: 25){
                    VStack{
                        Spacer()
                        Image("mileage")
                            .resizable()
                            .frame(width: 70, height: 70)
                        Spacer()
                        Text("Mileage")
                            .font(.headline)
                            .foregroundColor(CustomColor.rimacBlue)
                        Spacer()
                    }
                    .frame(width: 150, height: 180)
                    .background(Color.white)
                    .cornerRadius(20)
                    
                    NavigationLink(destination: GraphTest()) {
                    VStack{
                        Spacer()
                        Image("battery")
                            .resizable()
                            .frame(width: 70, height: 70)
                        Spacer()
                        
                        Text("Battery available")
                            .font(.headline)
                            .foregroundColor(CustomColor.rimacBlue)
                        
                        Spacer()
                        
                    }
                    .frame(width: 150, height: 180)
                    .background(Color.white)
                    .cornerRadius(20)
                    }
                }
                .padding(.top, 10)
                
                
                Spacer()
                
            }
            }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct SensorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SensorPickerView()
    }
}
