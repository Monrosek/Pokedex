//
//  Extensions.swift
//  Pokedex
//
//  Created by Mac on 11/12/17.
//  Copyright © 2017 Mobile Apps Company. All rights reserved.
//

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


