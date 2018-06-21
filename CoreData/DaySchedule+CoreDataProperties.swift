//
//  DaySchedule+CoreDataProperties.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/2018.
//  Copyright © 2018 Academy. All rights reserved.
//
//

import Foundation
import CoreData


extension DaySchedule {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DaySchedule> {
        return NSFetchRequest<DaySchedule>(entityName: "DaySchedule")
    }

    @NSManaged public var recipe: [String]?
    @NSManaged public var date: NSDate?
    @NSManaged public var user: User?

}
