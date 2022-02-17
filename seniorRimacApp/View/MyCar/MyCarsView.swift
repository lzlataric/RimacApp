//
//  MyCarsView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.02.2022..
//

import SwiftUI

struct MyCarsView: View {
    
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all, edges: .top)
            VStack{
                
                Text("Nevera")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                
                CarSliderView()
                
                CarSpeedView()
                    .padding(.top, 20)
                
                CarSpecsView()
                    .padding(.top, 20)
                
                Spacer()
                
            }
        }
    }
}

struct MyCarsView_Previews: PreviewProvider {
    static var previews: some View {
        MyCarsView()
    }
}
