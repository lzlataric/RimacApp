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

    let url = "http://localhost:8080/graphql"

    //private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
    
    
    private(set) lazy var apollo: ApolloClient = {
            let client = URLSessionClient()
            let cache = InMemoryNormalizedCache()
            let store = ApolloStore(cache: cache)
            let provider = NetworkInterceptorProvider(client: client, store: store)
            let url = URL(string: url)!
            let transport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                         endpointURL: url)
            return ApolloClient(networkTransport: transport, store: store)
        }()
    
}
