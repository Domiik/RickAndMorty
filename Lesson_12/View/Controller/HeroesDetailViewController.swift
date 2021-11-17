//
//  HeroesDetailViewController.swift
//  Lesson_12
//
//  Created by Domiik on 17.11.2021.
//

import UIKit

class HeroesDetailViewController: UIViewController {
    
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var statusHero: UILabel!
    @IBOutlet weak var statusHeroView: UIView!
    @IBOutlet weak var speciesAndGenderHero: UILabel!
    @IBOutlet weak var locationHero: UILabel!
    @IBOutlet weak var firstSeenHero: UILabel!
    
    var viewModel: HeroesDetailViewModel?
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel else {
            return
        }
        self.nameHero.text = viewModel.name
    }
    

}
