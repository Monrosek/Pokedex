//
//  Extensions.swift
//  Pokedex
//
//  Created by Mac on 11/12/17.
//  Copyright © 2017 Mobile Apps Company. All rights reserved.

import UIKit

extension UITextField {
    func Evaluate(_ type:FieldType) -> Bool {
        var regex:String
        switch type {
        case .Email: regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        case .Password: regex = "^(?=.*[0-9]).{6,}"
        }
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self.text)
    }
}

extension UIImageView {
    
    func imageFrom(url: String) {
        let cache = GlobalCache.shared.imageCache
        if let image = cache.object(forKey: url as NSString) {
            self.image = image
            return
        }
        
        NetworkService.getImage(from: url) { (image,error) in
            guard error == nil else {return}
            guard let image = image else {return}
            cache.setObject(image, forKey: url as NSString)
            DispatchQueue.main.sync {
                self.image = image
            }
        }
    }
}

extension PokeCell {
    func pokeFrom(url: String) {
        let cache = GlobalCache.shared.pokeCache
        if let obj = cache.object(forKey: url as NSString) {
            if let poke = obj as? Pokemon {
                self.poke = poke
            }
        }
        
        NetworkService.getPokemon(from: url) { (poke,error) in
            guard error == nil else {return}
            guard let poke = poke else {return}
            cache.setObject(poke as AnyObject, forKey: url as NSString)
            DispatchQueue.main.sync {
                self.poke = poke
            }
        }
    }
    
    
   
    
}

