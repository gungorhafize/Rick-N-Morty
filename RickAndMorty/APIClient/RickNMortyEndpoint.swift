//
//  RickNMortyEndpoint.swift
//  RickAndMorty
//
//  Created by Hafize on 17.10.2023.
//

import Foundation

///API endpoints
@frozen enum RickNMortyEndpoint : String{
    
    case character /// endpoint to get character info
    case location /// endpoint to get location info
    case episode /// endpoint to get episode info
}
