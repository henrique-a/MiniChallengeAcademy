//
//  MealPlanning.swift
//  MiniChanllenge
//
//  Created by Paulo Jose on 19/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

class MealPlanning {
    
    var name: String
    var daysArr: [String : Bool] = [ "Seg": false, "Ter": false, "Qua": false, "Qui": false,
                                     "Sex": false, "Sab": false, "Dom": false]
    
    init(_ name: String) {
        self.name = name
    }
    
}
