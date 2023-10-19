//
//  RickNMortyRequest.swift
//  RickAndMorty
//
//  Created by Hafize on 17.10.2023.
//

import Foundation

///Single API call
final class RickNMortyRequest{

    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint : RickNMortyEndpoint
    
    private let pathComponents : Set<String>
    
    private let queryParameters : [URLQueryItem]
    
    private var urlString: String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if(!pathComponents.isEmpty){
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if(!queryParameters.isEmpty){
            string += "?"
            let argString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
                string += argString
           
        }
        return string
    }
    
    public var url : URL?{
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    public init(endpoint: RickNMortyEndpoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    extension RickNMortyRequest{
        static let listCharacterRequests = RickNMortyCharacter(endpoint : .character)
    }
    
}
