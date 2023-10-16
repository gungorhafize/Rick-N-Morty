//
//  RickNMortyLocation.swift
//  RickAndMorty
//
//  Created by Hafize on 16.10.2023.
//

import Foundation

struct RickNMortyLocation : Codable{
        let id : Int
        let name: String
        let type: String
        let dimension: String
        let residents: [String]
        let url: String
        let created: String
        
}
