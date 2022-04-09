//
//  LoginViewModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 12.03.2022..
//

import Foundation
import KeychainSwift

class LoginViewModel: ObservableObject{
    @Published var loggedIn : Bool = false
    let keychain = KeychainSwift()
    
    func logIn(username: String, password: String) {
        self.keychain.delete("token")
            Network.shared.apollo.perform(mutation: LoginMutation(username: username, password: password)) { result in // Change the query name to your query name
              switch result {
              case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
                  if graphQLResult.data?.login?.token != nil{
                      self.loggedIn = true
                      self.keychain.set((graphQLResult.data?.login?.token)!, forKey: "token")
                  }
              case .failure(let error):
                print("Failure! Error: \(error)")
              }
            }
        }
    
}
