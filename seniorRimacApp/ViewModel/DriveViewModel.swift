//
//  DriveViewModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 16.03.2022..
//

import Foundation

class DriveViewModel: ObservableObject{
    @Published var drive : [Drives] = []

    
    func fetch(id: String) {
        self.drive = []
        Network.shared.apollo.fetch(query: DrivesQuery(id: id)) {[weak self] result in // Change the query name to your query name
          switch result {
          case .success(let graphQLResult):
            print("Success! Result: \(graphQLResult)")
              //self?.car = graphQLResult.data?.vehicles as! [VehiclesQuery.Data.Vehicle]
              if let drives = graphQLResult.data?.drives{
                  self?.drive = drives.compactMap({ $0 }).map(Drives.init)
              }
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
    
}
