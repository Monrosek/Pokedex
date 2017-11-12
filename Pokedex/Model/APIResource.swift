//
//  APIResource.swift
//  Pokedex
//
//  Created by Mac on 11/12/17.
//  Copyright © 2017 Mobile Apps Company. All rights reserved.
//


import UIKit

protocol resource {
    var url:String {get}
}

struct namedResource: resource {
    var name:String = String()
    var url:String = String()
    
    init?(_ dict:[String:Any]) {
        guard let name = dict["name"] as? String,
            let url = dict["url"] as? String
            else {return nil}
        self.name = name
        self.url = url
    }
}

struct Name {
    var name:String?
    var language:namedResource?
    
    init?(_ dict:[String:Any]) {
        guard let name = dict["name"] as? String,
            let language = dict["language"] as? [String:Any]
            else {return nil}
        self.name = name
        self.language = namedResource(language)
    }
}

struct VersionGameIndex {
    var game_index:Int?
    var version:namedResource?
    
    init?(_ dict:[String:Any]) {
        guard let game_index = dict["game_index"] as? Int,
            let version = dict["version"] as? [String:Any]
            else {return nil}
        self.game_index = game_index
        self.version = namedResource(version)
    }
}

struct GenerationGameIndex {
    var game_index:Int?
    var generation:namedResource?
    
    init?(_ dict:[String:Any]) {
        guard let generation = dict["generation"] as? [String:Any],
            let game_index = dict["game_index"] as? Int
            else {return nil}
        self.game_index = game_index
        self.generation = namedResource(generation)
    }
}

