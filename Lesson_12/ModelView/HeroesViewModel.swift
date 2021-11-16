//
//  HeroesViewModel.swift
//  Lesson_12
//
//  Created by Domiik on 10.11.2021.
//

import UIKit

class HeroesViewModel: NSObject {
    
    private var apiService: APIService!
    private var heroes: [Heroes]?
    
    
    override init() {
        super.init()
        apiService = APIService()
    }
    
    func fetchHeroes(completion: @escaping() -> ()) {
        self.apiService.downloadItem(url: "https://rickandmortyapi.com/api/character", completionHandler: { (data) in
            self.heroes = data
            completion()
        })
    }
    
    func numberOfRowInSection() -> Int {
        return heroes?.count ?? 0
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellHeroesViewModel? {
        guard let heroes = heroes else {return nil}
        let hero = heroes[indexPath.row]
        return TableViewCellHeroesViewModel(heroes: hero)
    }

}
