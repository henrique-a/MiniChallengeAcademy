//
//  PlanejamentoViewController.swift
//  MiniChanllenge
//
//  Created by Paulo Jose on 15/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class PlanejamentoViewController: UIViewController {
    
    var mealDays: [MealPlanning] = [
        MealPlanning("Café da manhã"),
        MealPlanning("Lanche da Manhã"),
        MealPlanning("Almoço"),
        MealPlanning("Lanche da tarde"),
        MealPlanning("Janta"),
         MealPlanning("Ceia")
    ]
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var intervaloLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        tituloLabel.textColor = UIColor(named: "mossyGreen")
        
        intervaloLabel.textColor = UIColor(named: "warmGrey")
    
    }

}

extension PlanejamentoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanejamentoTableCell", for: indexPath) as! PlanejamentoTableViewCell
        cell.titleLabel.text = mealDays[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealDays.count
    }
    
}


