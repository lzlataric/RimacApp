//
//  CarSelectionView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 15.03.2022..
//

import SwiftUI

struct CarSelectionView: View {
    @ObservedObject var carVM : VehicleViewModel
    @ObservedObject var driveVM : DriveViewModel
    @Binding var selectedCar: Int
    @Binding var selectedCarName: String
    
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all, edges: .top)
            VStack{
                Text("My cars")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                
                ScrollView{
                    ForEach(carVM.car){ car in
                        
                        //NavigationLink(destination: MyCarsView(carVM: carVM, carName: car.name)) {
                        if(selectedCar == Int(car.id)){
                            VStack{
                                Text(car.name)
                                    .font(.system(size: 30))
                                    .foregroundColor(CustomColor.rimacBlue)
                                
                                Image("nevera1")
                                    .resizable()
                                    .frame(width: 250, height: 125)
                                
                                Text(getStatus(status:car.status))
                                    .foregroundColor(CustomColor.rimacBlue)
                                
                            }
                            .frame(width: 350, height: 250)
                            .background(Color.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    
                                    .stroke(Color.blue, lineWidth: 5)
                                    .frame(width: 346, height: 250)
                                )
                            .padding(.top, 30)
                            .onTapGesture{
                                selectedCar = Int(car.id) ?? 0
                                selectedCarName = car.name
                                driveVM.fetch(id: car.id)
                            }
                        }
                        
                        else{
                            VStack{
                                Text(car.name)
                                    .font(.system(size: 30))
                                    .foregroundColor(CustomColor.rimacBlue)

                                Image("nevera1")
                                    .resizable()
                                    .frame(width: 250, height: 125)

                                Text(getStatus(status:car.status))
                                    .foregroundColor(CustomColor.rimacBlue)

                            }
                            .frame(width: 350, height: 250)
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding(.top, 30)

                            .onTapGesture{
                                selectedCar = Int(car.id) ?? 0
                                selectedCarName = car.name
                                driveVM.fetch(id: car.id)
                            }
                        }
                    }
                }
                .frame(height: 600)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
    func getStatus(status: VehicleStatus) -> String{
        if status == VehicleStatus.active{
            return "🟢 ACTIVE"
        }
        return "🔴 INACTIVE"
    }
    
}

//struct CarSelectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        CarSelectionView(carVM: VehicleViewModel())
//    }
//}
