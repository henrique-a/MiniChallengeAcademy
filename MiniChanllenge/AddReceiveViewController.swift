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

    var fluxo: Int!
    var mealsPlanning2 = [MealPlanningOnWeek]()
    var meal: String!
    var dia: String!
    //var recipe: RefeicaoDia
    //Array teste Receitas
    typealias arrayreceitas = Controladora
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //Label's Config
        txtAddReceipe = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtAddReceipe, text: "Adicionar Receita")
        txtFavorites = LabelFormatter.estiloDeTituloDeSecao(parameter: txtFavorites, text: "Favoritos")
        
        if fluxo == 2 {
            let refeicao = mealsPlanning2[0].name
            print(refeicao)
            txtMeal = LabelFormatter.estiloDeTituloDeSecao(parameter: txtMeal, text: refeicao)
        }
        else if fluxo == 1{
            txtMeal = LabelFormatter.estiloDeTituloDeSecao(parameter: txtMeal, text: meal)
        }
        
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

        if fluxo == 1{//fluxo do planner/agenda
            let controller = segue.destination as! RecipeViewController
            controller.delegate = self as? RecipeViewControllerDelegate
            controller.recipe = sender as? ReceitaTeste
            controller.btnAuxiliar = "Adicionar nesta refeição"
        }
        else if fluxo == 2{//fluxo do planejamento
            let controller = segue.destination as! RecipeViewController
            controller.delegate = self as? RecipeViewControllerDelegate
            controller.recipe = sender as? ReceitaTeste
            controller.btnAuxiliar = "Adicionar na agenda"
        }
        else{
            print("Erro ao chamar a tela 'Receita'")
        }
    }

}

extension AddReceiveViewController: UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cvMeal{
            return arrayreceitas.controladora.receitas.count
        } else {
           return arrayreceitas.controladora.favoritos.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //let cell = collectionView.cellForItem(at: indexPath)
        
        if collectionView == self.cvMeal{
            performSegue(withIdentifier: "Recipe", sender: arrayreceitas.controladora.receitas[indexPath.row])
            //print (arrayreceitas.controladora.receitas[indexPath.row])
        }
        else{
            performSegue(withIdentifier: "Recipe", sender: arrayreceitas.controladora.favoritos[indexPath.row])
            //print (arrayreceitas.controladora.favoritos[indexPath.row])
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cvMeal{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddRecieveCollectionCell2", for: indexPath) as! AddReceive2CollectionViewCell
            cell.imgCollection2.image = arrayreceitas.controladora.receitas[indexPath.row].imagem
            cell.lblCollection2.text = arrayreceitas.controladora.receitas[indexPath.row].nome
            
            return cell
        }
        else{
        
            //testando
            if (indexPath.row % 2) == 0 {
                if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionInsideCell", for: indexPath) as? AddReceiveCollectionViewCell {
                    cell.imgReceipe.image = arrayreceitas.controladora.favoritos[indexPath.row].imagem
                    cell.txtReceipeName.text = arrayreceitas.controladora.favoritos[indexPath.row].nome
//                    print("Case 3")
//                    print(indexPath.row)
                    return cell
                }
            }
            else{
                if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionInsideCell", for: indexPath) as? AddReceiveCollectionViewCell {
                    cell.imgReceipe.image = arrayreceitas.controladora.favoritos[indexPath.row].imagem
                    cell.txtReceipeName.text = arrayreceitas.controladora.favoritos[indexPath.row].nome
//                    print("Case 4")
//                    print(indexPath.row)
                    return cell
                }
            }
        }
        
        return UICollectionViewCell()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewAddReceiveCell")
        return cell!
        
//        //testes
//        switch indexPath.row {
//        case 0:
//            print("Case 0")
//            print(indexPath.row)
//            return cell!
//        default:
//            print("Case 1")
//            print(indexPath.row)
//            return cell!
//        }
        
//        if indexPath.row == 0 {
//            let cell = tvAddReceive.dequeueReusableCell(withIdentifier: "TableViewAddReceiveCell", for: indexPath)
//            return cell
//        }
//        else{
//            let cell = tvAddReceive.dequeueReusableCell(withIdentifier: "TableViewAddReceiveCell", for: indexPath)
//            return cell
//        }
        
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let tableViewCell = cell as? AddReceiveTableViewCell{
            tableViewCell.setCollectionViewDelegate(delegate: self, forRow: indexPath.row)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Recipe", sender: arrayreceitas.controladora.favoritos[indexPath.row])
    }
}
