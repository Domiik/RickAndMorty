//
//  HeroesDetailViewModel.swift
//  Lesson_12
//
//  Created by Domiik on 17.11.2021.
//

import Foundation


class HeroesDetailViewModel: NSObject {
    private var heroes: Heroes
    private var apiService: APIService
    
    init(heroes: Heroes) {
        self.heroes = heroes
        apiService = APIService()
    }
    
    var name: String {
        return heroes.name
    }
    
    var status: String {
        return heroes.status
    }
    
    var species: String {
        return heroes.species
    }
    
    var type: String {
        return heroes.type
    }
    
    var gender: String {
        return heroes.gender
    }
    
    var location: String {
        return heroes.location
    }
    
    
    //https://rickandmortyapi.com/api/character/2
}
