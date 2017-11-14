//
//  statsCell.swift
//  Pokedex
//
//  Created by Mac on 11/13/17.
//  Copyright © 2017 Mobile Apps Company. All rights reserved.
//

import UIKit

class statsCell: UITableViewCell {

    var item:Item? {
        didSet {
            guard let item = item as? StatsItem else {return}
            item.stats.forEach {
                switch $0.getStatType() {
                case .HP: HPstat.text? = String($0.base_stat ?? 0)
                case .ATK: ATKstat.text? = String($0.base_stat ?? 0)
                case .DEF: DEFstat.text? = String($0.base_stat ?? 0)
                case .SATK: SATKstat.text? = String($0.base_stat ?? 0)
                case .SDEF: SDEFstat.text? = String($0.base_stat ?? 0)
                case .ACC: ACCstat.text? = String($0.base_stat ?? 0)
                case .EVA: EVAstat.text? = String($0.base_stat ?? 0)
                default: return
                }
            }
            
        }
    }
    
    @IBOutlet var HPstat: UILabel!
    @IBOutlet var ATKstat: UILabel!
    @IBOutlet var DEFstat: UILabel!
    @IBOutlet var SATKstat: UILabel!
    @IBOutlet var SDEFstat: UILabel!
    @IBOutlet var SPDstat: UILabel!
    @IBOutlet var ACCstat: UILabel!
    @IBOutlet var EVAstat: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
 
    
}
