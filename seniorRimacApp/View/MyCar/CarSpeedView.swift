//
//  CarSpeedView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.02.2022..
//

import SwiftUI

struct CarSpeedView: View {
    var body: some View {
        HStack(spacing: 50){
            VStack{
                Image(systemName: "timer")
                    .font(.system(size: 40))
                    .padding(.top, 20)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Text("0-100")
                    .font(.caption)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
                
                Text("1.97sec")
                    .font(.headline)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
            }
            
            VStack{
                Image(systemName: "timer")
                    .font(.system(size: 40))
                    .padding(.top, 20)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Text("0-300")
                    .font(.caption)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
                
                Text("9.3sec")
                    .font(.headline)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
            }
            
            VStack{
                Image(systemName: "timer")
                    .font(.system(size: 40))
                    .padding(.top, 20)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Text("402m")
                    .font(.caption)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
                
                Text("8.6sec")
                    .font(.headline)
                    .foregroundColor(CustomColor.rimacBlue)
                
                Spacer()
            }
        }
        .frame(width: 350, height: 140)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct CarSpeedView_Previews: PreviewProvider {
    static var previews: some View {
        CarSpeedView()
    }
}
