//
//  RickNMortyEpisode.swift
//  RickAndMorty
//
//  Created by Hafize on 16.10.2023.
//

import Foundation

struct RickNMortyEpisode : Codable{
    let id:Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String

}
