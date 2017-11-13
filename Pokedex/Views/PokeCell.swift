//
//  PokeCell.swift
//  Pokedex
//
//  Created by Mac on 11/12/17.
//  Copyright © 2017 Mobile Apps Company. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {

    @IBOutlet var sprite: UIImageView!
    @IBOutlet var Label: UILabel!
    var poke:Pokemon?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        sprite?.layer.cornerRadius = 5
        sprite?.clipsToBounds = true
        sprite?.contentMode = .scaleAspectFit
        sprite?.backgroundColor = UIColor.lightGray
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}









