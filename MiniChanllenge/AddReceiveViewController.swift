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
    
    var recipes: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label's Config
        txtAddReceipe = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtAddReceipe, text: "Adicionar Receita", x: 0, y: 0)
        txtFavorites = LabelFormatter.estiloDeTituloDeSecao(parameter: txtFavorites, text: "Favoritos", x: 0, y: 0)
        txtMeal = LabelFormatter.estiloDeTituloDeSecao(parameter: txtMeal, text: "Café da Manhã", x: 0, y: 0)
        
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
        
        //Add in subviews
        //self.view1.addSubview(cvMeal)
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
    
    func getData(completionHandler: @escaping ([Recipe]) -> Void) {
        let jsonURL = "https://henriqueapi.herokuapp.com/recipes/?format=json"
        
        guard let url = URL(string: jsonURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err)  in
            
            guard let data = data else { return }
            do {
                let recipes: [Recipe] = try JSONDecoder().decode([Recipe].self, from: data)
                DispatchQueue.main.async {
                    completionHandler(recipes)
                    self.tvAddReceive.reloadData()
                    self.cvMeal.reloadData()
                }
            } catch {
                
            }
            }.resume()
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

extension AddReceiveViewController: UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cvMeal{
            print(self.recipes.count)
            return self.recipes.count
        } else {
            print(self.recipes.count)
            return self.recipes.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cvMeal{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddRecieveCollectionCell2", for: indexPath) as! AddReceive2CollectionViewCell
            if !self.recipes.isEmpty {
                let recipe = self.recipes[indexPath.row]
                cell.imgCollection2.image = recipe.image
                cell.lblCollection2.text = recipe.name
                
            } else {
                cell.imgCollection2.image = #imageLiteral(resourceName: "StrawberryBananaSmoothie.jpg")
                cell.lblCollection2.text = "Vitamina"
            }
    
            return cell
        }
        else {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionInsideCell", for: indexPath) as? AddReceiveCollectionViewCell {
                if !self.recipes.isEmpty {
                    let recipe = self.recipes[indexPath.row]
                    cell.imgReceipe.image = recipe.image
                    cell.txtReceipeName.text = recipe.name
                    
                } else {
                    cell.imgReceipe.image = #imageLiteral(resourceName: "3055_1_20170717170346.jpg")
                    cell.txtReceipeName.text = "Algodão Doce"
                    //cell.layer.cornerRadius = cell.bounds.height / 2.0
                }
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
