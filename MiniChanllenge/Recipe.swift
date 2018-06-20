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
    var imageURL: String
    var image: UIImage
    
    enum CodingKeys: String, CodingKey {
        case name
        case ingridients
        case howToPrepare
        case timeToPrepare
        case portions
        case imageURL = "image"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try values.decode(String.self, forKey: .name)
        self.ingridients = try values.decode([Ingridient].self, forKey: .ingridients)
        self.howToPrepare = try values.decode(String.self, forKey: .howToPrepare)
        self.timeToPrepare = try values.decode(Int.self, forKey: .timeToPrepare)
        self.portions = try values.decode(Int.self, forKey: .portions)
        self.imageURL = try values.decode(String.self, forKey: .imageURL)
        let url: URL = URL(string: imageURL)!
        let imageData:NSData = try NSData(contentsOf: url)
        self.image = UIImage(data: imageData as Data)!
    }
}
