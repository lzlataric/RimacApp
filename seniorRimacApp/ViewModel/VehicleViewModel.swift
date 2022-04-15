//
//  VehicleViewModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 15.03.2022..
//

import Foundation


class VehicleViewModel: ObservableObject{
    //@Published var car : [VehiclesQuery.Data.Vehicle] = []
    @Published var car : [Vehicle] = []

    
    init(){
        fetch()
    }
    
    func fetch() {
            Network.shared.apollo.fetch(query: VehiclesQuery()) {[weak self] result in // Change the query name to your query name
              switch result {
              case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
                  //self?.car = graphQLResult.data?.vehicles as! [VehiclesQuery.Data.Vehicle]
                  if let vehicles = graphQLResult.data?.vehicles{
                      self?.car = vehicles.compactMap({ $0 }).map(Vehicle.init)
                  }
              case .failure(let error):
                print("Failure! Error: \(error)")
              }
            }
        }
    
}
