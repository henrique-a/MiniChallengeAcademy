//
//  DaySchedule.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class DaySchedule: NSObject {
    let date: Date
    var meals: [(Type: Meal.MealType, Meal)]
    
    init(date: Date, meals: [(Type: Meal.MealType, Meal)]) {
        self.date = date
        self.meals = meals
    }
}
