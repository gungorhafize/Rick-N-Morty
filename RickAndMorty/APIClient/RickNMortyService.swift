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
    ///completion :  callback with success (data) or error
    public func execute(_ request: RickNMortyRequest, completion: @escaping () -> Void){
        
    }
}
