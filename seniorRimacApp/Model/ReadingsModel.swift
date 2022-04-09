//
//  ReadingsModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.03.2022..
//

import Foundation
import Apollo

struct Readings: Identifiable{
    
    let reading: ReadingQuery.Data.ReadingsAndTolerance.Reading
//    let readings: ReadingQuery.Data.ReadingsAndTolerance
//
    var id: GraphQLID{
        reading.id
    }
    
    var value: Double{
        reading.value!
    }
    
    var recorded: ReadingQuery.Data.ReadingsAndTolerance.Reading.RecordedAt{
        reading.recordedAt!
    }
    
}
