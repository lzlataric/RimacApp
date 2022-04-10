//
//  CustomSlider.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.03.2022..
//

import SwiftUI

struct CustomSlider: View {
    @ObservedObject var readingVM : ReadingViewModel
    @State var width: CGFloat = 0
    @State var width1: CGFloat = UIScreen.main.bounds.width - 60
    var totalwidth = UIScreen.main.bounds.width - 60
    var body: some View {
        
        VStack{
            Text("Pick a timeframe")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            
            ZStack(alignment: .leading){
                Rectangle()
                    .fill(CustomColor.monoRimacBlue.opacity(0.9))
                    .frame(height: 6)
                
                Rectangle()
                    .fill(Color.white)
                    .frame(width: self.width1 - self.width, height: 6)
                    .offset(x: self.width + 18)
                
                HStack(spacing: 0){
                    Circle()
                        .fill(Color.white)
                        .frame(width: 18, height: 18)
                        .offset(x: self.width)
                        .gesture(
                            DragGesture()
                                .onChanged({ (value) in
                                    if value.location.x >= 0 && value.location.x <= self.width1{
                                        self.width = value.location.x
                                        readingVM.sliderOne = Double(self.getValue(val: self.width/self.totalwidth)) ?? 0
                                    }
                                })
                        )
                    
                    Circle()
                        .fill(Color.white)
                        .frame(width: 18, height: 18)
                        .offset(x: self.width1)
                        .gesture(
                            DragGesture()
                                .onChanged({ (value) in
                                    if value.location.x <= self.totalwidth && value.location.x >= self.width{
                                        self.width1 = value.location.x
                                        readingVM.sliderTwo = Double(self.getValue(val: self.width1/self.totalwidth)) ?? 0
                                    }
                                })
                        )
                }
            }
            
            Text("Value")
                .foregroundColor(Color.white)
            
            Text("\(self.getValue(val: self.width/self.totalwidth)) - \(self.getValue(val: self.width1/self.totalwidth))")
                .foregroundColor(Color.white)
        }
        .padding()
    }
    
    func getValue(val: CGFloat) -> String{
        return String(format: "%.2f", val)
    }
}


