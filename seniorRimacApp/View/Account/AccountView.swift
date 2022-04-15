//
//  AccountView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import SwiftUI
import KeychainSwift

struct AccountView: View {
    @ObservedObject var logVM : LoginViewModel
    @ObservedObject var userVM : UserViewModel
    
    let keychain = KeychainSwift()
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all, edges: .top)
        VStack{
            
        Image(systemName: "person.fill")
            .font(.system(size: 300.0))
            .foregroundColor(.white)
            
            Text("\(userVM.user.firstName) \(userVM.user.lastName)")
                .font(.title)
                .foregroundColor(Color.white)
                .padding(.top, 20)
            
            Text("\(userVM.user.role.rawValue)")
                .font(.title)
                .foregroundColor(Color.white)
                .padding(.top, 20)
            
            
            
            Spacer()
            Spacer()
            
        }
        }
    }
}

//struct AccountView_Previews: PreviewProvider {
//    static var previews: some View {
//        AccountView()
//    }
//}
