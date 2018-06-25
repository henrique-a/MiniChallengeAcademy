//
//  MealPlanningOnWeek.swift
//  MiniChanllenge
//
//  Created by Paulo Jose on 20/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

struct MealPlanningOnWeek {
    
    var name: String
    var days: [String: Bool]
    
    init(name: String) {
        self.name = name
        days = ["Seg": false, "Ter": false, "Qua": false, "Qui": false, "Sex": false, "Sab": false, "Dom": false]
    }
    
}
