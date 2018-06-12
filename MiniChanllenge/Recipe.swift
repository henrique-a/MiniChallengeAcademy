//
//  Recipe.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class Recipe: NSObject {
    let ingridients: [(Food: Food, Quantity: Float)]
    let howToPrepare: String
    let time: Int
    
    init(ingridients: [(Food: Food, Quantity: Float)], howToPrepare: String, time: Int) {
        self.ingridients = ingridients
        self.howToPrepare = howToPrepare
        self.time = time
    }
    
}
