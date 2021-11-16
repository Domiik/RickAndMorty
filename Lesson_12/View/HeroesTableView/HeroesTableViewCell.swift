//
//  HeroesTableViewCell.swift
//  Lesson_12
//
//  Created by Domiik on 10.11.2021.
//

import UIKit

class HeroesTableViewCell: UITableViewCell {
    @IBOutlet weak var imageHeroes: UIImageView!
    @IBOutlet weak var nameHeroes: UILabel!
    @IBOutlet weak var statusHeroes: UILabel!
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var formHeroes: UILabel!
    @IBOutlet weak var geolocationHeroes: UILabel!
    
    
//    var heroes: HeroesViewModel? {
//        didSet {
//            nameHeroes.text = heroes?.her
//            statusHeroes.text = heroes?.status
//            formHeroes.text = heroes?.gender
//        }
//    }
}
