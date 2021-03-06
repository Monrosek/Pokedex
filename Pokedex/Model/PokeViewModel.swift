//
//  PokeViewModel.swift
//  Pokedex
//
//  Created by Mac on 11/13/17.
//  Copyright © 2017 Mobile Apps Company. All rights reserved.
//

import UIKit

enum itemType {
   case image
   case stats
   case sprites
   case type
   case ability
}

protocol Item {
    var type: itemType {get}
    var rowCount: Int {get}
    var sectionTitle: String {get}
}
extension Item {
    var rowCount:Int{return 1}
}

class PokeViewModel: NSObject {
    var items = [Item]()

    init(poke:Pokemon) {
        super.init()
        if let img = poke.sprites?.front_default {
            var newItem = ImageItem(url: img)
            newItem.sectionTitle = poke.name ?? ""
            items.append(newItem)
        }
        if let stats = poke.stats {
            
            let newItem = StatsItem(stats)
            items.append(newItem)
        }
        if let types = poke.types {
            let newItem = TypesItem(types)
            items.append(newItem)
        }
        
    }
}

struct ImageItem: Item {
    var imgUrl:String
    var sectionTitle = String()
    var rowCount = 1
    var type: itemType {
        return .image
    }
    init(url: String) {
        self.imgUrl = url
    }
}

struct StatsItem: Item {
    var stats:[PokemonStat] = []
    var sectionTitle = String()
    var type: itemType {
        return .stats
    }
    
    init(_ stats:[PokemonStat]) {
       stats.forEach{self.stats.append($0)}
    }
}

struct TypesItem: Item {
    var types:[PokemonType] = []
    var sectionTitle = "Types"
    var type: itemType {
        return .type
    }
    
    init(_ types:[PokemonType]) {
        types.forEach{self.types.append($0)}
    }
    
}

