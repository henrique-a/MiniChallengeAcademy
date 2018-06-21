//
//  User+CoreDataProperties.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 21/06/2018.
//  Copyright © 2018 Academy. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var buyingFrequency: String?
    @NSManaged public var name: String?
    @NSManaged public var shoppingList: [String]?
    @NSManaged public var schedule: DaySchedule?

}
