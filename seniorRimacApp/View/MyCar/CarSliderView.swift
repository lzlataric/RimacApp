//
//  CarSliderView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.02.2022..
//

import SwiftUI

struct CarSliderView: View {
    @State private var rotation = 0.0
    
    func getImage(num: Double) -> String{
        if(num == 0){
            return "nevera1"
        }
        if(num >= 0 && num < 1){
            return "nevera2"
        }
        if(num >= 1 && num < 2){
            return "nevera3"
        }
        if(num >= 2){
            return "nevera4"
        }
        return "nevera1"
    }
    
    var body: some View {
        VStack{
            Image(self.getImage(num: self.rotation))
            .resizable()
            .frame(width: 300, height: 150)
        
        
        Slider(value: $rotation, in: 0...2)
                .accentColor(CustomColor.rimacBlue)
                .frame(width: 220)
        }
        .frame(width: 350, height: 250)
        .background(Color.white)
        .cornerRadius(20)
    }
    }


struct CarSliderView_Previews: PreviewProvider {
    static var previews: some View {
        CarSliderView()
    }
}
