//
//  PlanejamentoViewController.swift
//  MiniChanllenge
//
//  Created by Paulo Jose on 15/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class PlanejamentoViewController: UIViewController {
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var intervaloLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var mealsPlanning = [MealPlanningOnWeek]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        mealsPlanning = [
                        MealPlanningOnWeek(name: "Café da manhã"),
                        MealPlanningOnWeek(name: "Lanche da manhã"),
                        MealPlanningOnWeek(name: "Almoço"),
                        MealPlanningOnWeek(name: "Lanche da tarde"),
                        MealPlanningOnWeek(name: "Janta"),
                        MealPlanningOnWeek(name: "Ceia")]
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
//        tituloLabel.font = UIFont.estiloDeCabecalhoDaPagina
        tituloLabel.textColor = UIColor(named: "mossyGreen")
        
//        intervaloLabel.font = UIFont.estiloDePeriodoDeDias
        intervaloLabel.textColor = UIColor(named: "warmGrey")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension PlanejamentoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("PlanejamentoTableViewCell", owner: self, options: nil)?.first as! PlanejamentoTableViewCell
        cell.titleLabel.text = mealsPlanning[indexPath.row].name
        
        for (index, day) in cell.daysLabelArr.enumerated() {
            
            if (mealsPlanning[indexPath.row].days[(day.text)!])! {
                day.textColor = UIColor(named: "mossyGreen")
            }
            
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealsPlanning.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82.0
    }
    
}
