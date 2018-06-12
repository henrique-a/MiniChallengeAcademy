//
//  Meal.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class Meal: NSObject {
    
    enum MealType {
        case breakfast
        case lunch
        case dinner
        case morningSnack
        case afternoonSnack
    }
    
    let name: String
    let nutricionalInformations: Dictionary<String,Float>
    let recipe: Recipe
    let type: MealType
    
    init(name: String, nutricionalInformations: Dictionary<String,Float>,  recipe: Recipe, type: MealType) {
        self.name = name
        self.nutricionalInformations = nutricionalInformations
        self.recipe = recipe
        self.type = type
    }
    
}
