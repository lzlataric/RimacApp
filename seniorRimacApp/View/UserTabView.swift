//
//  UserTabView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.02.2022..
//

import SwiftUI

struct UserTabView: View {
    @ObservedObject var logVM : LoginViewModel
    @StateObject var userVM : UserViewModel = UserViewModel()
    @ObservedObject var vehicleVM = VehicleViewModel()
    @ObservedObject var driveVM = DriveViewModel()
    @ObservedObject var readingVM = ReadingViewModel()
    @State var selectedCar = 0
    @State var selectedCarName = ""
    var body: some View {
        NavigationView {
            if(userVM.userInfo != "GENERAL_ADMIN"){
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
            
            AccountView(logVM: logVM, userVM: userVM)
                .tabItem {
                    Label("Account", systemImage: "person.fill")
                }
            
            

        }
        
        }
            else{
                AdminTabView(vehicleVM: vehicleVM, driveVM: driveVM, readingVM: readingVM, logVM: logVM, userVM: userVM, selectedCar: $selectedCar, selectedCarName: $selectedCarName)
            }
            
            
    }
        .accentColor(CustomColor.rimacBlue)
                    .navigationBarHidden(true)
                    .onAppear{
                        userVM.meQuery()
                    }
    }
        
}

//struct UserTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserTabView()
//    }
//}
