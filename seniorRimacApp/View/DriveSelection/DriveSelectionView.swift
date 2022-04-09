//
//  DriveSelectionView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 16.03.2022..
//

import SwiftUI

struct DriveSelectionView: View {
    @State private var currentVehicle = "0"
    @ObservedObject var driveVM: DriveViewModel
    @ObservedObject var carVM: VehicleViewModel
    @ObservedObject var readingVM: ReadingViewModel
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all, edges: .top)
            VStack{
                Text("Drives")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                Picker(selection: $currentVehicle, label: Text("Color")) {
                    ForEach(carVM.car){ car in
                        Text(car.modelName)
                    }
                    
                }
                .pickerStyle(SegmentedPickerStyle())
                .onChange(of: currentVehicle) { tag in
                    driveVM.fetch(id: String(tag))
                }
                
                if currentVehicle == "0" {
                    Text("Please select car")
                        .foregroundColor(Color.white)
                    Spacer()
                }else{
                    ScrollView{
                        ForEach(driveVM.drive){ drive in
                            
                            NavigationLink(destination: SensorPickerView(readingVM: readingVM, driveId: currentVehicle)) {
                                VStack{
                                    Text(drive.period.startAt?.shortTimestamp ?? "")
                                        .font(.system(size: 20))
                                        .foregroundColor(CustomColor.rimacBlue)
                                    
                                    HStack{
                                        MapTest()
                                        
                                        VStack(alignment: .leading){
                                            Text("Started at: " + (drive.period.startAt?.fullTimestamp!.suffix(15))!.prefix(8))
                                            
                                            Text("Ended at: " + (drive.period.endAt?.fullTimestamp!.suffix(15))!.prefix(8))
                                        }
                                    }
                                    
                                    
                                    
                                }
                                .frame(width: 350, height: 250)
                                .background(Color.white)
                                .cornerRadius(20)
                                .padding(.top, 20)
                            }
                            
                        }
                    }
                }
                
                
            }
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}


//struct DriveSelectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        DriveSelectionView()
//    }
//}
