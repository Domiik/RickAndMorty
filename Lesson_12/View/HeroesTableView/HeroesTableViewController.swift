//
//  HeroesTableViewController.swift
//  Lesson_12
//
//  Created by Domiik on 10.11.2021.
//

import UIKit

class HeroesTableViewController: UITableViewController {
    
    private var heroesViewModel = HeroesViewModel()
    
    override func loadView() {
        super.loadView()
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.heroesViewModel.fetchHeroes {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
           
        }
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(heroesViewModel.numberOfRowInSection())
        return heroesViewModel.numberOfRowInSection()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HeroesTableViewCell
        guard let tableViewCell = cell  else { return HeroesTableViewCell() }
        
        let cellViewModel = heroesViewModel.cellViewModel(forIndexPath: indexPath)
        
        tableViewCell.viewModel = cellViewModel
        // Configure the cell...

        return tableViewCell
    }
    

  

}
