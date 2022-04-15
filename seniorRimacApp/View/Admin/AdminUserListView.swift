//
//  AdminUserListView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import SwiftUI

struct AdminUserListView: View {
    @ObservedObject var userVM : UserViewModel = UserViewModel()
    @State private var showingSheet = false
    var body: some View {
        ZStack{
            CustomColor.rimacBlue
                .ignoresSafeArea(.all)
            VStack{
                
                
                
                Text("Users")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    
                    //Spacer()
            
                ScrollView{
                    ForEach(userVM.users){ one in
                        NavigationLink(destination: AdminUpdateUserView(userVM: userVM, id: one.user.id, username: one.user.username, firstName: one.user.firstName, lastName: one.user.lastName)) {
                        HStack{
                            
                            Image(systemName: "person.fill")
                                .font(.system(size: 60.0))
                                .foregroundColor(CustomColor.rimacBlue)
                                .padding(.leading, 30)
                            
                            Spacer()
                            
                            Text("\(one.user.firstName) \(one.user.lastName)")
                                .foregroundColor(CustomColor.rimacBlue)
                                .font(.title)
                                .padding(.trailing, 60)
                        }
                        .frame(width: 350, height: 100)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                    }
                    }
                }
                
                .frame(height: 550)
                
                VStack(alignment: .trailing){
                Button("New user") {
                    showingSheet.toggle()
                }
                .frame(width: 120, height: 50)
                .background(Color.white)
                .foregroundColor(CustomColor.rimacBlue)
                .cornerRadius(15)
                .sheet(isPresented: $showingSheet) {
                    if #available(iOS 15.0, *) {
                        UserSheet(userVM: userVM)
                    } else {
                        // Fallback on earlier versions
                    }
                        }
            }
            }
            Spacer()
        }
        .onAppear{
            userVM.users = []
            userVM.getUsers()
        }
        .navigationTitle("")
        //.navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
//        .onAppear{
//            userVM.users = []
//            sleep(1)
//            userVM.getUsers()
//        }
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                Button("+") {
//                    showingSheet.toggle()
//                }
//                .foregroundColor(Color.white)
//                .font(.title)
//                .sheet(isPresented: $showingSheet) {
//                    if #available(iOS 15.0, *) {
//                        UserSheet(userVM: userVM)
//                    } else {
//                        // Fallback on earlier versions
//                    }
//                        }
//            }
//        }
    }
}


