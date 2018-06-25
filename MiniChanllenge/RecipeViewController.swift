//
//  RecipeViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 18/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    @IBOutlet weak var txtRecipe: UILabel!
    @IBOutlet weak var imgRecipe: UIImageView!
    @IBOutlet weak var txtRecipeName: UILabel!
    @IBOutlet weak var txtPrepareTime: UILabel!
    @IBOutlet weak var btnFavorite: UIButton!
    @IBOutlet weak var txtIngredients: UILabel!
    @IBOutlet weak var txtIngredientsDetails: UILabel!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var txtPrepare: UILabel!
    @IBOutlet weak var txtPrepareDetails: UILabel!
    
    var delegate: RecipeViewControllerDelegate?
    var recipe: ReceitaTeste?
    var dia: String?
    var btnAuxiliar: String!
    var meal: String? 
    typealias arrayreceitas = Controladora
    
    @IBOutlet weak var viewScroll: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Background
        self.view.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        viewScroll.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        
        //Label's config.
        txtRecipe = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtRecipe, text: "Receita")
        txtRecipeName = LabelFormatter.estiloDeTextoNomeReceita(parameter: txtRecipeName, text: (recipe?.nome)!)
        txtPrepareTime = LabelFormatter.estiloDeTextoSimples2(parameter: txtPrepareTime, text: (recipe?.tempo)!)
        txtIngredients = LabelFormatter.estiloDeTextoIngredientes(parameter: txtIngredients, text: "Você precisará de:")
        txtIngredientsDetails = LabelFormatter.estiloDeTextoSimples2(parameter: txtIngredientsDetails, text: (recipe?.ingredientes)!)
        txtPrepare = LabelFormatter.estiloDeTextoIngredientes(parameter: txtPrepare, text: "Mão na massa:")
        txtPrepareDetails = LabelFormatter.estiloDeTextoSimples2(parameter: txtPrepareDetails, text: (recipe?.preparo)!)
        
        //Button's config.
        btnAdd = ButtonFormatter.buttonLong(parameter: btnAdd, text: btnAuxiliar)
        btnFavorite.contentMode = .scaleToFill
        if recipe?.favorito == false {
            btnFavorite.setBackgroundImage(#imageLiteral(resourceName: "star-9.png") , for: UIControlState.normal)
        }
        else{
            btnFavorite.setBackgroundImage(#imageLiteral(resourceName: "star-8.png"), for: UIControlState.normal)
        }
        btnFavorite.tintColor = #colorLiteral(red: 0.9179999828, green: 0.4629999995, blue: 0.2389999926, alpha: 1)
        
        //Image config
        imgRecipe.image = recipe?.imagem
        imgRecipe.contentMode = .scaleAspectFill
        imgRecipe.clipsToBounds = true
        imgRecipe.layer.cornerRadius = 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! AddCalendarViewController
        controller.recipe = sender as! ReceitaTeste
        
    }
    
    @IBAction func favoriteAction(_ sender: UIButton) {
        if recipe?.favorito == false{
            sender.setBackgroundImage(#imageLiteral(resourceName: "star-8.png"), for: UIControlState.normal)
            arrayreceitas.controladora.favoritos.append(recipe!)
            
//            print(arrayreceitas.controladora.favoritos.count)
//            for var receita in arrayreceitas.controladora.favoritos{
//                print(receita.nome)
//            }
            
            recipe?.favorito = true
            
        }
        else{
            sender.setBackgroundImage(#imageLiteral(resourceName: "star-9.png") , for: UIControlState.normal)
            var i = 0
            for var receita in arrayreceitas.controladora.favoritos{
                if receita.nome == recipe!.nome && receita.ingredientes == recipe!.ingredientes {
                    
                    arrayreceitas.controladora.favoritos.remove(at: i)
                    i = 0
                    break
                }
                else{
                    
                    i = i + 1
                }
            }
            recipe?.favorito = false
        }
    }
    
    @IBAction func AddAction(_ sender: UIButton) {
        if btnAuxiliar == "Remover"{
            //Logica para remover a receita da refeição
        }
        else if btnAuxiliar == "Adicionar nesta refeição"{
            //Logica para add numa refeicao especifica
            //print(arrayreceitas.controladora.mealsPlanning[0].name)
        }
        else if btnAuxiliar == "Adicionar na agenda"{
            //chama a tela add na agenda
            self.performSegue(withIdentifier: "AddCalendar", sender: recipe)
        }
        else{
            print("Erro na tela 'Receita': Chamada de botão inválida")
        }
    }
}
