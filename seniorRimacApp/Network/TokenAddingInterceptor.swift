//
//  TokenAddingInterceptor.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 13.03.2022..
//

import Foundation
import Apollo
import KeychainSwift

class TokenAddingInterceptor: ApolloInterceptor {
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {

            let keychain = KeychainSwift()
            if let token = keychain.get("token") {
//                print("---------------------")
//                print(keychain.get("token"))
                request.addHeader(name: "Authorization", value: "Bearer \(token)")
            } // else do nothing

            chain.proceedAsync(request: request,
                               response: response,
                               completion: completion)
    }
}
