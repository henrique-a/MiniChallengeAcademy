//
//  ViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var recipes:[Recipe] = []
    var user: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        getData() { (response) in
            if let responseArray = response as? [Recipe] {
                self.recipes = responseArray
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    enum SerializationError:Error {
        case missing(String)
        case invalid(String, Any )
    }
    
    
    func getData(completionHandler: @escaping ([Recipe]) -> Void) {
        let jsonURL = "https://henriqueapi.herokuapp.com/recipes/?format=json"

        guard let url = URL(string: jsonURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err)  in
            
            guard let data = data else { return }
            do {
                let recipes: [Recipe] = try JSONDecoder().decode([Recipe].self, from: data)
                DispatchQueue.main.async {
                    completionHandler(recipes)
                    self.saveData(recipes: recipes)
                }
            } catch {
                
            }
            }.resume()
    }
    
    func saveData(recipes: [Recipe]) {
        /*
        let imageView = UIImageView(frame: CGRect(x:0, y:0, width:200, height:200))
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(imageView)
        imageView.image = recipes[0].image
        
        var user: User? = nil
        
        if CoreDataHandler.saveUser(name: "Henrique", buyingFrequency: "1", shoppingList: ["Cebola", "Banana", "Manteiga"]) {
            user = CoreDataHandler.fetchUser()?[8]
            print(user?.name)
            print(user?.shoppingList![1])
        }
        
        if CoreDataHandler.saveDaySchedule(date: Date(), recipe: "teste", user: (CoreDataHandler.fetchUser()?[8])!) {
            user = CoreDataHandler.fetchUser()?[8]
            print(user?.schedule?.recipe)
        } */
    }
    
    
    
    
}

