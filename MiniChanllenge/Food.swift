//
//  Food.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class Food: NSObject {
    let name: String
    let price: Float
    let nutricionalInformations: [(Name:String, Value: Float)]
    
    init(name: String, price: Float, nutricionalInformations: [(Name:String, Value: Float)]) {
        self.name = name
        self.price = price
        self.nutricionalInformations = nutricionalInformations
    }
}
