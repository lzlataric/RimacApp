//
//  UserTabView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.02.2022..
//

import SwiftUI

struct UserTabView: View {
    var body: some View {
        TabView{
            SharedRecordView()
                .tabItem {
                    Label("New", systemImage: "shift.fill")
                }
            
            MyCarsView()
                .tabItem {
                    Label("My Car", systemImage: "car.fill")
                }
        }
        .accentColor(CustomColor.rimacBlue)
    }
}

struct UserTabView_Previews: PreviewProvider {
    static var previews: some View {
        UserTabView()
    }
}
