//
//  User.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class User: NSObject {
    
    enum Frequency {
        case week
        case fortnightly
        case month
    }
    
    let name: String
    let buyingFrequency: Frequency
    var favorites: [Meal]
    var groceryList: [Food]
    
    init(name: String, buyingFrequency: Frequency, favorites: [Meal], groceryList: [Food]) {
        self.name = name
        self.buyingFrequency = buyingFrequency
        self.favorites = favorites
        self.groceryList = groceryList
    }
}
