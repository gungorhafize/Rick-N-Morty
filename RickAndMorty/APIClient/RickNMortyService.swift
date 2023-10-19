//
//  RickNMortyService.swift
//  RickAndMorty
//
//  Created by Hafize on 17.10.2023.
//

import Foundation

//Base API Service Object

final class RickNMortyService{
    ///Shared singleton instance
    static let shared = RickNMortyService()
    
    private init(){}
    
    ///API Call
    ///Paremeters:
    ///request: Request instance
    ///type: The type of object that we expect to get back
    ///completion :  callback with success (data) or error
    public func execute<T: Codable>(
        _ request: RickNMortyRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void){
        
    }
}
