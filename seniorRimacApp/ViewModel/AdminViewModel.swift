//
//  AdminViewModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.04.2022..
//

import Foundation
import Apollo

class AdminViewModel: ObservableObject{
    @Published var sensors: [Sensors] = []
    
    init(){
        getSensors()
    }
    
    func getSensors(){
            Network.shared.apollo.fetch(query: SensorsQuery(id: "1"),cachePolicy: .fetchIgnoringCacheData) { result in // Change the query name to your query name
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
                //self?.car = graphQLResult.data?.vehicles as! [VehiclesQuery.Data.Vehicle]
                //DispatchQueue.main.async {
                if let users = graphQLResult.data?.sensors{
                        self.sensors = []
                        self.sensors = users.compactMap({ $0 }).map(Sensors.init)
                    }
                //}
                
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
        }
    
    func createSensor(name: String){
        Network.shared.apollo.perform(mutation: CreateSensorMutation(input: CreateSensor(name: name, unit: "", vehicleId: "1", locationId: "1"))){ result in // Change the query name to your query name
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
    
    func createTolerance(input: Double, id: String){
        Network.shared.apollo.perform(mutation: CreateToleranceMutation(input: CreateTolerance(sensorId: id, limit: input))){ result in // Change the query name to your query name
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

    
    
}
