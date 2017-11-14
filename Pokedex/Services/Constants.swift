//
//  Constants.swift
//  Pokedex
//
//  Created by Mac on 11/12/17.
//  Copyright © 2017 Mobile Apps Company. All rights reserved.
//

import Foundation

class k {
    static let UserNameKey = "com.company.app.UserKey"
    static let PassKey = "com.company.app.Password"
    //Root img respository
    static let rootImgURL = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"
    static let rootAPI = "https://pokeapi.co/api/v2/"
    static let APILimit = "?limit=5&offset=450"
    //Upper limit of PokeDex
    static let MaxPokemon = 151
}

class API {
    static let root = "https://pokeapi.co/api/v2/"
    static let offset = 0
    static let MaxPokemon = 151
    static let  limit = "?limit=\(MaxPokemon)&offset=\(offset)"
    static let img = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"
}
