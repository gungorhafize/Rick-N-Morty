//
//  RickNMortyCharacter.swift
//  RickAndMorty
//
//  Created by Hafize on 16.10.2023.
//

import Foundation

struct RickNMortyCharacter : Codable{
    let id: Int
    let name: String
    let status:RickNMortyCharacterStatus
    let species: String
    let type: String
    let gender: RickNMortyCharacterGender
    let origin: RickNMortyOrigin
    let location: RickNMortySingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

