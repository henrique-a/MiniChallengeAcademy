//
//  CoreDataHandler.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit
import CoreData

class CoreDataHandler: NSObject {
    
    private class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    class func saveUser(name: String, buyingFrequency: String, shoppingList: [String]) -> Bool {
        let context = getContext()
        let userEntity = NSEntityDescription.entity(forEntityName: "User", in: context)
        let user = NSManagedObject(entity: userEntity!, insertInto: context)
        
        user.setValue(name, forKey: "name")
        
        user.setValue(buyingFrequency, forKey: "buyingFrequency")
        user.setValue(shoppingList, forKey: "shoppingList")
        
        
        do {
            try context.save()
            return true
        } catch {
            return false
        }
    }
    
    class func saveDaySchedule(date: Date, recipe: [String], user: User) -> Bool {
        let context = getContext()
        let userEntity = NSEntityDescription.entity(forEntityName: "DaySchedule", in: context)
        let schedule = NSManagedObject(entity: userEntity!, insertInto: context)
        
        schedule.setValue(date, forKey: "date")
        schedule.setValue(recipe, forKey: "recipe")
        schedule.setValue(user, forKey: "user")
        
        do {
            try context.save()
            return true
        } catch {
            return false
        }
    }
    
    class func fetchUser() -> [User]? {
        let context = getContext()
        var user: [User]? = nil
        do {
            user = try context.fetch(User.fetchRequest())
            
            return user
        } catch  {
            return user
        }
    }
}
