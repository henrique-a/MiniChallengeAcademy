//
//  Recipe.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class Recipe: Decodable {
    var name: String = "teste"
    //    let ingridients: [(Food: Food, Quantity: Float)]
    var howToPrepare: String = ""
    var timeToPrepare: Int = 0
    var portions: Int = 0
    
    //    init(ingridients: [(Food: Food, Quantity: Float)], howToPrepare: String, time: Int) {
    //        self.ingridients = ingridients
    //        self.howToPrepare = howToPrepare
    //        self.time = time
    //    }
    
    //    init(json: [String: Any]) {
    //        self.name = json["name"] as? String ?? ""
    ////        self.ingridients = json["ingridients"] as?
    //        self.howToPrepare = json["howToPrepare"] as? String ?? ""
    //        self.time = json["time"] as? Int ?? 0
    //        self.portions = json["portions"] as? Int ?? 0
    //    }
}
