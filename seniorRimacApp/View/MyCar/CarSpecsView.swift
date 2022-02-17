//
//  CarSpecsView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.02.2022..
//

import SwiftUI

struct CarSpecsView: View {
    var body: some View {
        HStack(spacing: 20){
            VStack{
                Image(systemName: "bolt.fill")
                    .font(.system(size: 40))
                    .padding(.top, 20)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Text("Power")
                    .font(.caption)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
                
                Text("1914 hp")
                    .font(.headline)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
            }
            .frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(20)
            
            VStack{
                Image(systemName: "speedometer")
                    .font(.system(size: 45))
                    .padding(.top, 20)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Text("Top speed")
                    .font(.caption)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
                
                Text("412 km/h")
                    .font(.headline)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
            }
            .frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(20)
            
            
            VStack{
                Image(systemName: "bolt.batteryblock.fill")
                    .font(.system(size: 50))
                    .padding(.top, 20)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Text("Battery capacity")
                    .font(.caption)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
                
                Text("120 kwH")
                    .font(.headline)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
            }
            .frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(20)
        }
        .frame(width: 350, height: 140)
    }
}

struct CarSpecsView_Previews: PreviewProvider {
    static var previews: some View {
        CarSpecsView()
    }
}
