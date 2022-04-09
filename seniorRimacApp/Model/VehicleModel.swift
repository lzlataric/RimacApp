//
//  VehicleModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 15.03.2022..
//

import Foundation
import Apollo

struct Vehicle: Identifiable{
    let vehicles: VehiclesQuery.Data.Vehicle
    
    var id : GraphQLID {
        vehicles.id
    }
    
    var name: String{
        vehicles.name
    }
    
    var modelName: String{
        vehicles.modelName
    }
    
//    var modelNumber: String{
//        vehicles.modelNumber
//    }
    
    var firmwareVersion: String{
        vehicles.firmwareVersion ?? ""
    }
    
    var status: VehicleStatus{
        vehicles.status
    }
}


//struct Vehicles: Decodable{
//    var vehicles: [Vehicles]
//}
//
//struct Vehicle: Identifiable, Decodable {
//    var id: UUID
//    var name: String
//    var modelName: String
//    var modelNumber: String?
//    var firmwareVersion: String?
//    var status: Status
//}
//
//enum Status: Codable{
//    case ACTIVE
//    case INACTIVE
//}
