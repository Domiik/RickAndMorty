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
    private var imageHeroes = [TableViewCellHeroesViewModel]()
    private var selectedIndexPath: IndexPath?
    
    
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
    
    
    func viewModelForSelectedRow() -> HeroesDetailViewModel? {
        guard let selectIndexPath = selectedIndexPath else { return nil}
        guard let heroes = heroes else {return nil}
        return HeroesDetailViewModel(heroes: heroes[selectIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }

}
