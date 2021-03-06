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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
