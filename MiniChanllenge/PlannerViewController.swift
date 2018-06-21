//
//  PlannerViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class PlannerViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, PlannerTableViewDelegate {
    
    @IBOutlet weak var txtPlanner: UILabel!
    @IBOutlet weak var btnList: UIButton!
    
    @IBOutlet weak var tvPlanner: UITableView!
    @IBOutlet weak var collectionPlanner: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Background Config
        self.view.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        
        //Collection Config
        collectionPlanner.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize (width: 45, height: 45)
        layout.minimumLineSpacing = CGFloat(8)
        layout.minimumInteritemSpacing = CGFloat(8)
        layout.scrollDirection = .horizontal
        self.collectionPlanner.collectionViewLayout = layout
        
        //Label's Config
        txtPlanner = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtPlanner, text: "Agenda", x: 0, y: 0)
        
        //Button Config
        btnList.setImage(#imageLiteral(resourceName: "symbol271.png") , for: .normal)
        btnList.tintColor = #colorLiteral(red: 0.3449999988, green: 0.5839999914, blue: 0.1920000017, alpha: 1)
        
        //Table View Config
        self.tvPlanner.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        self.tvPlanner.dataSource = self
        self.tvPlanner.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellCollection = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! PlannerCollectionViewCell
        
        cellCollection.txtWeekDay.text = "Seg"
        cellCollection.txtDay.text = "12"
        cellCollection.txtMonth.text = "Mar"
        
        return cellCollection
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
    @IBAction func btnCallList(_ sender: UIButton) {
        self.performSegue(withIdentifier: "List", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "List" {
            //let controller = segue.destination as! ShoppingListViewController
            //controller.delegate = self
        }
        
        else if segue.identifier == "AddRecipe" {
            let controller = segue.destination as! AddReceiveViewController
//            controller.delegate = self as? RecipeViewControllerDelegate
//            controller.recipe2 = sender as? ReceitaTeste
        }
        
        else if segue.identifier == "Recipe" {
            let controller = segue.destination as! RecipeViewController
            controller.delegate = self as? RecipeViewControllerDelegate
            controller.recipe = sender as? ReceitaTeste
        }
    }
    
    func btnTouched(row: Int) {
        print(refeicoes[row])
        performSegue(withIdentifier: "AddRecipe", sender: row)
        
    }

}

extension PlannerViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvPlanner.dequeueReusableCell(withIdentifier: "PlannerTableView") as! PlannerTableViewCell
        
        cell.txtMeal.text = "Café da Manhã"
        cell.txtTime.text = "07:00"
        cell.txtMealDetails.text = "Vitamina de Banana"
        cell.btnAddMeal.setTitle("Adicionar", for: .normal)
        cell.tableLine = indexPath.row
        cell.delegate = self
        cell.btnCheckMeal.setTitle("", for: .normal)
        cell.selectionStyle = .none

        tvPlanner.rowHeight = 120
        return cell
    }
}
