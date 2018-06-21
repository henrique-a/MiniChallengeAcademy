//
//  Food.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

public struct Ingridient: Decodable {
    var name: String
    var quantity: Float
    var unity: String
    var price: Float
    
    enum CodingKeys: String, CodingKey {
        case name = "description"
        case quantity
        case unity
        case price
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try values.decode(String.self, forKey: .name)
        self.quantity = try values.decode(Float.self, forKey: .quantity)
        self.unity = try values.decode(String.self, forKey: .unity)
        self.price = try values.decode(Float.self, forKey: .price)
    }git 
}
