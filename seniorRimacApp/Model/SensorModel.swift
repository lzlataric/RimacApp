//
//  SensorModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.03.2022..
//

import Foundation
import Apollo

struct Sensors: Identifiable{
    let sensors: SensorsQuery.Data.Sensor
    
    var id : GraphQLID{
        sensors.id
    }
    var name : String{
        sensors.name
    }
}
