//
//  UserViewModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 12.04.2022..
//

import Foundation
import Apollo

class UserViewModel: ObservableObject{
    @Published var userInfo: String = "GUEST"
    @Published var user : User = User(user: UserQuery.Data.Me(unsafeResultMap: ResultMap()))
    @Published var users : [Users] = []

//    init(){
//        meQuery()
//    }

    func meQuery(){
        Network.shared.apollo.fetch(query: UserQuery()) {[weak self] result in // Change the query name to your query name
          switch result {
          case .success(let graphQLResult):
              if let user = graphQLResult.data?.me{
                  self?.userInfo = user.role.rawValue
                  let id = user.id
                  let username = user.username
                  let firstName = user.firstName
                  let lastName = user.lastName
                  let role = user.role
                  self?.user = User(user: UserQuery.Data.Me(id: id, username: username, firstName: firstName, lastName: lastName, role: role))
              }

          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }

    func getUsers(){
            Network.shared.apollo.fetch(query: GetUsersQuery(),cachePolicy: .fetchIgnoringCacheData) { result in // Change the query name to your query name
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
                //self?.car = graphQLResult.data?.vehicles as! [VehiclesQuery.Data.Vehicle]
                //DispatchQueue.main.async {
                    if let users = graphQLResult.data?.users{
                        self.users = []
                        self.users = users.compactMap({ $0 }).map(Users.init)
                    }
                //}

            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
        }

    func createUser(username: String, firstName: String, lastName: String, password: String){
        Network.shared.apollo.perform(mutation: CreateUserMutation(input: CreateUser(username: username, firstName: firstName, lastName: lastName, password: password))){ result in // Change the query name to your query name
            switch result {
            case .success(let graphQLResult):
              print("Success! Result: \(graphQLResult)")
                //DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(2), execute: {
                    //self.getUsers()
                //})

            case .failure(let error):
              print("Failure! Error: \(error)")
            }
          }
    }

    func updateUser(id: GraphQLID, username: String, firstName: String, lastName: String){
        Network.shared.apollo.perform(mutation: UpdateUserMutation(id: id, input: UpdateUser(username: username, firstName: firstName, lastName: lastName))){ result in // Change the query name to your query name
            switch result {
            case .success(let graphQLResult):
              print("Success! Result: \(graphQLResult)")
                //self.getUsers()
            case .failure(let error):
              print("Failure! Error: \(error)")
            }
          }
    }

    func enableUser(id: GraphQLID){
        Network.shared.apollo.perform(mutation: EnableUserMutation(id: id)){ result in // Change the query name to your query name
            switch result {
            case .success(let graphQLResult):
              print("Success! Result: \(graphQLResult)")
                //self.getUsers()
            case .failure(let error):
              print("Failure! Error: \(error)")
            }
          }
    }

    func disableUser(id: GraphQLID){
        Network.shared.apollo.perform(mutation: DisableUserMutation(id: id)){ result in // Change the query name to your query name
            switch result {
            case .success(let graphQLResult):
              print("Success! Result: \(graphQLResult)")
                //self.getUsers()
            case .failure(let error):
              print("Failure! Error: \(error)")
            }
          }
    }
}
