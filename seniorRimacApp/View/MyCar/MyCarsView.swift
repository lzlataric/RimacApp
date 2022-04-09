//
//  MyCarsView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.02.2022..
//

import SwiftUI

struct MyCarsView: View {
    @ObservedObject var carVM : VehicleViewModel
    @Binding var selectedCar: Int
    @Binding var selectedCarName: String
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all, edges: .top)
            
            if(selectedCarName != ""){
            ScrollView{
                
                Text(selectedCarName)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
                CarSliderView()
                
                CarSpeedView()
                    .padding(.top, 20)
                
                CarSpecsView()
                    .padding(.top, 20)
                
                Spacer()
                
            }
            
        }
            else{
                Text("Please select a car!")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
//            .navigationTitle("")
//            .navigationBarTitleDisplayMode(.inline)
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}


