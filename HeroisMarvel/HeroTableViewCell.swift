//
//  HeroTableViewCell.swift
//  HeroisMarvel
//
//  Created by Rodrigo Dias on 05/09/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit
import Kingfisher

class HeroTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ivThumb: UIImageView!
    @IBOutlet weak var ibName: UILabel!
    @IBOutlet weak var ibDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//      Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//      Configure the view for the selected state
    }
    
    func prepareCell(with hero: Hero) {
        ibName.text = hero.name
        ibDescription.text = hero.description
        if let url = URL(string: hero.thumbnail.url) {
            ivThumb.kf.indicatorType = .activity
            ivThumb.kf.setImage(with:url)
        } else {
            ivThumb.image = nil
        }
        
        ivThumb.layer.cornerRadius = ivThumb.frame.size.height/2
        ivThumb.layer.borderColor = UIColor.red.cgColor
        ivThumb.layer.borderWidth = 2
        
        
    }
}
