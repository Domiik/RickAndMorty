//
//  Heroes.swift
//  Lesson_12
//
//  Created by Domiik on 16.11.2021.
//

import Foundation


struct Heroes {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let location: String
    let image: String
    
    init?(currentHeroesData: HeroesDataResult) {
        name = currentHeroesData.name
        status = currentHeroesData.status
        species = currentHeroesData.species
        type = currentHeroesData.type
        gender = currentHeroesData.gender
        location = currentHeroesData.location.name
        image = currentHeroesData.image
        id = currentHeroesData.id
    }
}
