//
//  Graph.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.03.2022..
//

import SwiftUI
import SwiftUICharts

struct Graph: View {
    var sensorID: String
    var driveID: String
    @ObservedObject var readingsVM: ReadingViewModel
    var body: some View {
        ZStack
        {
            CustomColor.rimacBlue
            //Color.white
                .ignoresSafeArea(.all)
            
            if readingsVM.readings.isEmpty == true{
                ProgressView()
            }else{
                VStack{
                    Spacer()
                    CustomSlider(readingVM: readingsVM)
                    
                    Spacer()
                    
                    
                    if(readingsVM.shouldShowGraph == true){
                        if #available(iOS 15.0, *) {
                            VStack{
                                readingsVM.returnGraph()
                            }
                            .background(.white)
                        } else {
                            // Fallback on earlier versions
                        }
                    }
                    else{
                        ProgressView()
                            .foregroundColor(Color.white)
                    }
                    
                    //}
                    Spacer()
                }
            }
            
            
        }
        .onAppear{self.readingsVM.fetch(sensorId: self.sensorID, driveId: self.driveID)}
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}
