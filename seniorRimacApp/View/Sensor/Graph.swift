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
                    CustomSlider()
                    
                    Spacer()
                    
                    NavigationLink(destination: GraphView(data: readingsVM.getGraphData(title: ""))){
                        Text("See graph")
                            .frame(width: 100, height: 50, alignment: .center)
                            .background(Color.white)
                            .foregroundColor(CustomColor.rimacBlue)
                            .cornerRadius(15)
                    }
                    Spacer()
                }
            }
            
            
        }
        .onAppear{self.readingsVM.fetch(sensorId: self.sensorID, driveId: self.driveID)}
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}
