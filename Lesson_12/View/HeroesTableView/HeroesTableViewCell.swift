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
    
    
    weak var viewModel: TableViewCellHeroesViewModel? {
        willSet(viewModel) {
            guard let viewModel = viewModel else {
                return
            }
            nameHeroes.text = viewModel.name
            statusHeroes.text = viewModel.status
            formHeroes.text = viewModel.gender
            geolocationHeroes.text = viewModel.location
            viewModel.downloadImage {
                DispatchQueue.main.async {
                    self.imageHeroes.image = viewModel.image
                }
            }
            self.statusColor()
        }
    }
    
    func statusColor() {
        if statusHeroes.text == "Dead" {
            statusView.backgroundColor = .red
        } else {
            statusView.backgroundColor = .green
        }
    }
    
    
    
    override func layoutSubviews() {
          super.layoutSubviews()
          //set the values for top,left,bottom,right margins
          let margins = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
          contentView.frame = contentView.frame.inset(by: margins)
          contentView.layer.cornerRadius = 10
    }
    
}
