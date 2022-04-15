//
//  AdminTabView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 12.04.2022..
//

import SwiftUI

struct AdminTabView: View {
    @ObservedObject var vehicleVM : VehicleViewModel
    @ObservedObject var driveVM : DriveViewModel
    @ObservedObject var readingVM : ReadingViewModel
    @ObservedObject var logVM : LoginViewModel
    @ObservedObject var userVM : UserViewModel
    @Binding var selectedCar: Int
    @Binding var selectedCarName: String
    var body: some View {
            TabView{
                
                CarSelectionView(carVM: vehicleVM, driveVM: driveVM, selectedCar: $selectedCar, selectedCarName: $selectedCarName)
                    .tabItem {
                        Label("Car selection", systemImage: "filemenu.and.selection")
                    }
                
                MyCarsView(carVM: vehicleVM, selectedCar: $selectedCar, selectedCarName: $selectedCarName)
                    .tabItem {
                        Label("Selected car", systemImage: "car.fill")
                    }
                
                DriveSelectionView(driveVM: driveVM, carVM: vehicleVM, readingVM: readingVM, selectedCar: $selectedCar, selectedCarName: $selectedCarName)
                    .tabItem {
                        Label("Drives", systemImage: "scribble.variable")
                    }
                
                AdminView(userVM: userVM)
                    .tabItem {
                        Label("Admin", systemImage: "terminal.fill")
                    }
                
                
                AccountView(logVM: logVM, userVM: userVM)
                    .tabItem {
                        Label("Account", systemImage: "person.fill")
                    }
            
//            .accentColor(CustomColor.rimacBlue)
//                        .navigationBarHidden(true)
        }
    }
}

//struct AdminTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        AdminTabView()
//    }
//}
