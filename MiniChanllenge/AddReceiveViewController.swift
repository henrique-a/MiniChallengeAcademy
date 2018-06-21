//
//  AddReceiveViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class AddReceiveViewController: UIViewController {
    @IBOutlet weak var tvAddReceive: UITableView!
    @IBOutlet weak var cvMeal: UICollectionView! //2
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var txtAddReceipe: UILabel!
    @IBOutlet weak var txtFavorites: UILabel!
    @IBOutlet weak var txtMeal: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Label's Config
        txtAddReceipe = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtAddReceipe, text: "Adicionar Receita")
        txtFavorites = LabelFormatter.estiloDeTituloDeSecao(parameter: txtFavorites, text: "Favoritos")
        txtMeal = LabelFormatter.estiloDeTituloDeSecao(parameter: txtMeal, text: "Café da Manhã")
        
        view1.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        self.view.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        
        //Collection View Config
        cvMeal.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        cvMeal.delegate = self
        cvMeal.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize (width: 220, height: 225)
        layout.minimumLineSpacing = CGFloat(17)
        layout.minimumInteritemSpacing = CGFloat(0)
        layout.scrollDirection = .horizontal
        self.cvMeal.collectionViewLayout = layout
        
        //Table view Config
        tvAddReceive.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        tvAddReceive.delegate = self
        tvAddReceive.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Recipe" {
            
            let controller = segue.destination as! RecipeViewController
            controller.delegate = self as? RecipeViewControllerDelegate
            controller.recipe = sender as? ReceitaTeste
            print("chegou aqui")
            
        }
    }

}

extension AddReceiveViewController: UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cvMeal{
            return 5
        } else {
           return 5
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        performSegue(withIdentifier: "Recipe", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cvMeal{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddRecieveCollectionCell2", for: indexPath) as! AddReceive2CollectionViewCell
            cell.imgCollection2.image = #imageLiteral(resourceName: "StrawberryBananaSmoothie.jpg")
            cell.lblCollection2.text = "Vitamina"
            
            return cell
        }
        else{
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionInsideCell", for: indexPath) as? AddReceiveCollectionViewCell {
                cell.imgReceipe.image = #imageLiteral(resourceName: "3055_1_20170717170346.jpg")
                cell.txtReceipeName.text = "Algodão Doce"
                
                return cell
            }
        }
        
        return UICollectionViewCell()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvAddReceive.dequeueReusableCell(withIdentifier: "TableViewAddReceiveCell", for: indexPath)
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let tableViewCell = cell as? AddReceiveTableViewCell{
            tableViewCell.setCollectionViewDelegate(delegate: self, forRow: indexPath.row)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    
    
}
