//
//  UserModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 12.04.2022..
//

import Foundation
import Apollo

struct User: Identifiable{
    let user : UserQuery.Data.Me
    
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

