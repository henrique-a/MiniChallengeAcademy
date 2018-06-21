//
//  PlannerViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class PlannerViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var txtPlanner: UILabel!
    @IBOutlet weak var btnList: UIButton!
    
    @IBOutlet weak var tvPlanner: UITableView!
    @IBOutlet weak var collectionPlanner: UICollectionView!
    
    //Array teste Receitas
    var arrayReceitas: [ReceitaTeste] = []
    var refeicoes = ["Café da Manhã", "Lanche da Manhã", "Almoço", "Lance da Tarde", "Jantar", "Ceia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // Teste
        let receita = ReceitaTeste.init(aNome: "Vitamina de Banana", aIngredientes: "100 ml de leite \n2 bananas", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "5,00 min", aImagem: #imageLiteral(resourceName: "StrawberryBananaSmoothie.jpg"))
        let receita2 = ReceitaTeste.init(aNome: "Algodão doce", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        let receita3 = ReceitaTeste.init(aNome: "Pirulito", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        let receita4 = ReceitaTeste.init(aNome: "Sanduiche", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        let receita5 = ReceitaTeste.init(aNome: "Salada de frutas", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        let receita6 = ReceitaTeste.init(aNome: "Pirão de carne", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        arrayReceitas.append(receita)
        arrayReceitas.append(receita2)
        arrayReceitas.append(receita3)
        arrayReceitas.append(receita4)
        arrayReceitas.append(receita5)
        arrayReceitas.append(receita6)
        
        
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
        txtPlanner = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtPlanner, text: "Agenda")
        
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
    
    @IBAction func btnCallList(_ sender: UIButton) {
        self.performSegue(withIdentifier: "List", sender: nil)
    }
   
//    @IBAction func btnCallAddRecipe(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "AddRecipe", sender: arrayReceitas[])
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "List" {
            //let controller = segue.destination as! ShoppingListViewController
            //controller.delegate = self
        }
        
        else if segue.identifier == "AddRecipe" {
            let controller = segue.destination as! AddReceiveViewController
            controller.delegate = self as? RecipeViewControllerDelegate
            controller.recipe2 = sender as? ReceitaTeste
        }
        
        else if segue.identifier == "Recipe" {
            let controller = segue.destination as! RecipeViewController
            controller.delegate = self as? RecipeViewControllerDelegate
            controller.recipe = sender as? ReceitaTeste
        }
    }
}

//extension PlannerViewController: sendFoodDelegate {
//    func sendFood(foods: [String]) {
//        <#code#>
//    }
//}

extension PlannerViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvPlanner.dequeueReusableCell(withIdentifier: "PlannerTableView") as! PlannerTableViewCell
        
        cell.txtMeal.text = refeicoes[indexPath.row]
        cell.txtTime.text = "07:00"
        cell.txtMealDetails.text = arrayReceitas[indexPath.row].nome
        cell.btnAddMeal.setTitle("Adicionar", for: .normal)
        cell.btnCheckMeal.setTitle("", for: .normal)
        cell.selectionStyle = .none

        tvPlanner.rowHeight = 120
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "Recipe", sender: arrayReceitas[indexPath.row])
    }
}
