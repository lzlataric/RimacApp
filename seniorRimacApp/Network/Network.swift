//
//  Network.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 12.03.2022..
//

import Foundation
import Apollo

class Network {
  static let shared = Network()

    let url = "https://localhost:8080/graphql"

    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
}
