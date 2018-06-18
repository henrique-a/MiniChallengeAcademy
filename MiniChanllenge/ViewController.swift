//
//  ViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 11/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    enum SerializationError:Error {
        case missing(String)
        case invalid(String, Any )
    }
    
    var recipes:[Recipe] = []
    
    func getData() {
        let jsonURL = "https://henriqueapi.herokuapp.com/recipes/?format=json"
        
        guard let url = URL(string: jsonURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err)  in
            guard let data = data else { return }
            do {
                self.recipes = try JSONDecoder().decode([Recipe].self, from: data)
//                for recipe in self.recipes {
//                    recipe.ingridients = try JSONDecoder().decode([Ingridient].self, from: data)
//                }
                for recipe in self.recipes {
                    print(recipe.ingridients[0].quantity)
                }
            } catch {
                
            }
            }.resume()
    }
    
    
    
    
}

