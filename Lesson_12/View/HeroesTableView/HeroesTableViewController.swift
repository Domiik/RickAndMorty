//
//  HeroesTableViewController.swift
//  Lesson_12
//
//  Created by Domiik on 10.11.2021.
//

import UIKit

class HeroesTableViewController: UITableViewController {
    
    private var heroesViewModel: TableHeroesViewModelTypeProtocol?
    
    override func loadView() {
        super.loadView()
        self.heroesViewModel = HeroesViewModel()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(heroesViewModel?.numberOfRow)
        return heroesViewModel?.numberOfRow ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HeroesTableViewCell
        
        // Configure the cell...

        return cell
    }
    

  

}
