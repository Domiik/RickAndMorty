//
//  Heroes.swift
//  Lesson_12
//
//  Created by Domiik on 16.11.2021.
//

import Foundation


struct Heroes {
    let name: String
    let status: String
    
    
    init?(currentHeroesData: HeroesDataResult) {
        name = currentHeroesData.name
        status = currentHeroesData.status
    }
}
