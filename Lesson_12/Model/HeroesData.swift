//
//  Heroes.swift
//  Lesson_12
//
//  Created by Domiik on 10.11.2021.
//

import Foundation
import SwiftyJSON

struct HeroesData: Decodable {
    let results: [HeroesDataResult]
}


// MARK: - Result
struct HeroesDataResult: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, status, species, type, gender, origin, location, image, episode, url, created
    }
    
}


// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String

}

