//
//  UsersModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import Foundation
import Apollo

struct Users: Identifiable{
    let user : GetUsersQuery.Data.User
    
    var id : GraphQLID {
        user.id
    }
    
    var username : String {
        user.username
    }
    
    var role : Role{
        user.role
    }
    
    var firstName: String {
        user.firstName
    }
    
    var lastName: String{
        user.lastName
    }
}
