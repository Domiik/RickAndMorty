//
//  TableHeroesViewModelTypeProtocol.swift
//  Lesson_12
//
//  Created by Domiik on 16.11.2021.
//

import Foundation


protocol TableHeroesViewModelTypeProtocol {
    var numberOfRow: Int { get }
    var heroes: [Heroes] { get } 
}
