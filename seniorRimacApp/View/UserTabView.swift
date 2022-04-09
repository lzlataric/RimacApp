//
//  UserTabView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.02.2022..
//

import SwiftUI

struct UserTabView: View {
    @ObservedObject var vehicleVM = VehicleViewModel()
    @ObservedObject var driveVM = DriveViewModel()
    @ObservedObject var readingVM = ReadingViewModel()
    @State var selectedCar = 0
    @State var selectedCarName = ""
    var body: some View {
        NavigationView {
        TabView{
            
            CarSelectionView(carVM: vehicleVM, selectedCar: $selectedCar, selectedCarName: $selectedCarName)
                .tabItem {
                    Label("Car selection", systemImage: "filemenu.and.selection")
                }
            
            MyCarsView(carVM: vehicleVM, selectedCar: $selectedCar, selectedCarName: $selectedCarName)
                .tabItem {
                    Label("Selected car", systemImage: "car.fill")
                }
            
            DriveSelectionView(driveVM: driveVM, carVM: vehicleVM, readingVM: readingVM)
                .tabItem {
                    Label("Drives", systemImage: "scribble.variable")
                }
            
//            MyCarsView(carVM: vehicleVM)
//                .tabItem {
//                    Label("My Car", systemImage: "car.fill")
//                }
            
            

        }
        .accentColor(CustomColor.rimacBlue)
                    .navigationBarHidden(true)
    }
    }
}

struct UserTabView_Previews: PreviewProvider {
    static var previews: some View {
        UserTabView()
    }
}
