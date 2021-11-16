//
//  HeroesViewModel.swift
//  Lesson_12
//
//  Created by Domiik on 10.11.2021.
//

import UIKit

class HeroesViewModel: TableHeroesViewModelTypeProtocol {
    
    private var apiService: APIService!
    var numberOfRow: Int {
        return heroes.count
    }
    
    var heroes = [Heroes]()
    
     init() {
         print("hi")
        self.apiService =  APIService()
        self.callFuncToGetEmpData()
         print("hi")
    }
    
    func callFuncToGetEmpData() {
        self.apiService.downloadItem(url: "https://rickandmortyapi.com/api/character", completionHandler: { (data) in
            self.heroes.append(data)
        })
    }
    
}
