//
//  Recipe.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

struct Recipe: Decodable {
    
    var name: String
    var ingridients: [Ingridient]
    var howToPrepare: String
    var timeToPrepare: Int
    var portions: Int
    var image: String
}
