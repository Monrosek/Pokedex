//
//  imageCell.swift
//  Pokedex
//
//  Created by Mac on 11/13/17.
//  Copyright © 2017 Mobile Apps Company. All rights reserved.
//

import UIKit

class imageCell: UITableViewCell {

    @IBOutlet var sprite:UIImageView!
    var item:Item? {
        didSet {
           // guard let item = item as? ImageItem else {return}
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        sprite?.layer.cornerRadius = 5
        sprite?.clipsToBounds = true
        sprite?.contentMode = .scaleAspectFit
        sprite?.backgroundColor = UIColor.white
        //sprite.resizeImage(targetSize: CGSize(width:100, height:100))
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: false)

        // Configure the view for the selected state
    }
    
}
