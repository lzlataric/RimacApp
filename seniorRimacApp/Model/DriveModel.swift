//
//  DriveModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 16.03.2022..
//

import Foundation
import Apollo

struct Drives: Identifiable{
    let drives : DrivesQuery.Data.Drife
    
    var id : GraphQLID {
        drives.id
    }
    
    var coordinates : DrivesQuery.Data.Drife.Coordinate {
        drives.coordinates!
    }
    
    var period : DrivesQuery.Data.Drife.Period{
        drives.period!
    }
    
}

//struct Coordinates{
//    let coordinates : DrivesQuery.Data.Drife.Coordinate
//
//    var latitude: Double{
//        coordinates.latitude ?? 0
//    }
//
//    var longitude: Double{
//        coordinates.longitude ?? 0
//    }
//}
