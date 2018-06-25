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
    
    //Array teste Receitas
    typealias arrayreceitas = Controladora
    var refeicoes = ["Café da Manhã", "Lanche da Manhã", "Almoço", "Lance da Tarde", "Jantar", "Ceia"]
    var diaSemana = ["Seg", "Ter", "Qua", "Qui", "Sex", "Sab", "Dom"]
    var diaSelecionado : String!
    var arrayTableView: RefeicaoDia = arrayreceitas.controladora.semana.arrayRefeicaoSemana[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
       // Teste
        let receita = ReceitaTeste.init(aNome: "Vitamina de Banana", aIngredientes: "100 ml de leite \n2 bananas", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "5,00 min", aImagem: #imageLiteral(resourceName: "StrawberryBananaSmoothie.jpg"))
        let receita2 = ReceitaTeste.init(aNome: "Algodão doce", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        let receita3 = ReceitaTeste.init(aNome: "Pirulito", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        let receita4 = ReceitaTeste.init(aNome: "Sanduiche", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        let receita5 = ReceitaTeste.init(aNome: "Salada de frutas", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))
        let receita6 = ReceitaTeste.init(aNome: "Pirão de carne", aIngredientes: "1 xic de Açúcar\n1 colher de corante \npalito de cheurrasco", aPreparo: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", aTempo: "10 min", aImagem: #imageLiteral(resourceName: "3055_1_20170717170346.jpg"))

        arrayreceitas.controladora.receitas.append(receita)
        arrayreceitas.controladora.receitas.append(receita2)
        arrayreceitas.controladora.receitas.append(receita3)
        arrayreceitas.controladora.receitas.append(receita4)
        arrayreceitas.controladora.receitas.append(receita5)
        arrayreceitas.controladora.receitas.append(receita6)
        
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[0].arrayRefeicaoDia[0].arrayRefeicao.append(receita)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[0].arrayRefeicaoDia[1].arrayRefeicao.append(receita6)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[0].arrayRefeicaoDia[2].arrayRefeicao.append(receita2)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[0].arrayRefeicaoDia[3].arrayRefeicao.append(receita3)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[0].arrayRefeicaoDia[4].arrayRefeicao.append(receita4)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[0].arrayRefeicaoDia[5].arrayRefeicao.append(receita5)
        
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[1].arrayRefeicaoDia[0].arrayRefeicao.append(receita6)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[1].arrayRefeicaoDia[1].arrayRefeicao.append(receita2)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[1].arrayRefeicaoDia[2].arrayRefeicao.append(receita)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[1].arrayRefeicaoDia[3].arrayRefeicao.append(receita5)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[1].arrayRefeicaoDia[4].arrayRefeicao.append(receita3)
    arrayreceitas.controladora.semana.arrayRefeicaoSemana[1].arrayRefeicaoDia[5].arrayRefeicao.append(receita4)
        
        //Fim de teste
        
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
        return diaSemana.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellCollection = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! PlannerCollectionViewCell
        
        cellCollection.txtWeekDay.text = diaSemana[indexPath.row]
        cellCollection.txtDay.text = "12"
        cellCollection.txtMonth.text = "Mar"
        
        return cellCollection
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        diaSelecionado = diaSemana[indexPath.row]
        atualizarArray(parametro: indexPath.row)
        self.tvPlanner.reloadData()
    }
    
    func atualizarArray(parametro: Int){
        self.arrayTableView = arrayreceitas.controladora.semana.arrayRefeicaoSemana[parametro]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCallList(_ sender: UIButton) {
        self.performSegue(withIdentifier: "List", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "List" {
            
        }
        
        else if segue.identifier == "AddRecipe" {
            let controller = segue.destination as! AddReceiveViewController
            
            let aux = sender as! ToSender
            controller.meal = aux.refeicao
            controller.dia = aux.dia
            
            controller.fluxo = 1
            
        }
        
        else if segue.identifier == "Recipe" {
            let controller = segue.destination as! RecipeViewController
            controller.delegate = self as? RecipeViewControllerDelegate
            
            let aux = sender as! ToSenderArray
            controller.recipe =  aux.refeicao
            controller.meal = aux.meal
            controller.dia = aux.dia
            
            controller.btnAuxiliar = "Remover"
        }
    }
    
    func btnTouched(row: Int, dia: String) {
        
        let sender = ToSender(dia: dia, refeicao: refeicoes[row])
        performSegue(withIdentifier: "AddRecipe", sender: sender)
        
    }
}

extension PlannerViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayTableView.arrayRefeicaoDia.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvPlanner.dequeueReusableCell(withIdentifier: "PlannerTableView") as! PlannerTableViewCell
        
        cell.txtMeal.text = arrayTableView.arrayRefeicaoDia[indexPath.row].nomeRefeicao
        
        if arrayTableView.arrayRefeicaoDia[indexPath.row].arrayRefeicao.count > 0{
            cell.txtMealDetails.text = arrayTableView.arrayRefeicaoDia[indexPath.row].arrayRefeicao[0].nome
        }
        else{
            cell.txtMealDetails.text = "Nenhuma Refeição"
        }
        
        cell.btnAddMeal.setTitle("Adicionar", for: .normal)
        cell.tableLine = indexPath.row
        cell.dia = arrayTableView.dia
        cell.delegate = self
        cell.btnCheckMeal.setTitle("", for: .normal)
        cell.selectionStyle = .none

        tvPlanner.rowHeight = 120
        return cell
    }
    //Struct para enviar duas strings como sender
    struct ToSender {
        var dia: String?
        var refeicao: String?
    }
    
    //Struct para enviar duas strings e uma receita
    struct ToSenderArray{
        var dia: String?
        var meal: String?
        var refeicao: ReceitaTeste?
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if arrayTableView.arrayRefeicaoDia[indexPath.row].arrayRefeicao.count > 0{
            let sender  = ToSenderArray(dia: arrayTableView.dia, meal: arrayTableView.arrayRefeicaoDia[indexPath.row].nomeRefeicao , refeicao: arrayTableView.arrayRefeicaoDia[indexPath.row].arrayRefeicao[0])
            
            self.performSegue(withIdentifier: "Recipe", sender: sender)
            
        }else{
            
            let sender = ToSender(dia: arrayTableView.dia, refeicao: arrayTableView.arrayRefeicaoDia[indexPath.row].nomeRefeicao)
            
            self.performSegue(withIdentifier: "AddRecipe", sender: sender)
            
        }
        
    }
}
