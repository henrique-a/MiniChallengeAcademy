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
    
    var flagFavorite = false
    
    @IBOutlet weak var viewScroll: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Background
        self.view.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        viewScroll.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        
        //Label's config.
        txtRecipe = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtRecipe, text: "Receita", x: 18, y: 57)
        txtRecipeName = LabelFormatter.estiloDeTextoNomeReceita(parameter: txtRecipeName, text: "Vitamina de Banana", x: 19, y: 272)
        txtPrepareTime = LabelFormatter.estiloDeTextoSimples2(parameter: txtPrepareTime, text: "Tempo de preparo: 5 min", x: 19, y: 310)
        txtIngredients = LabelFormatter.estiloDeTextoIngredientes(parameter: txtIngredients, text: "Você precisará de:", x: 19, y: 438)
        txtIngredientsDetails = LabelFormatter.estiloDeTextoSimples2(parameter: txtIngredientsDetails, text: "2 Bananas \n100 ml de Leite", x: 46, y: 467)
        txtPrepare = LabelFormatter.estiloDeTextoIngredientes(parameter: txtPrepare, text: "Mão na massa:", x: 19, y: 546)
        txtPrepareDetails = LabelFormatter.estiloDeTextoSimples2(parameter: txtPrepareDetails, text: "1. Faça isso \n2. Faça aquilo \n3. Faça aquilo outro \n4. Prontinho", x: 18, y: 600)
        
        //Button's config.
        //btnFavorite
        btnAdd = ButtonFormatter.buttonLong(parameter: btnAdd, text: "Adicionar na quinta-feira")
        btnFavorite.contentMode = .scaleToFill
        btnFavorite.setBackgroundImage(#imageLiteral(resourceName: "star-9.png"), for: .normal)
        btnFavorite.tintColor = #colorLiteral(red: 0.9179999828, green: 0.4629999995, blue: 0.2389999926, alpha: 1)
        
        //Image config
        imgRecipe.image = #imageLiteral(resourceName: "StrawberryBananaSmoothie.jpg")
        imgRecipe.contentMode = .scaleAspectFill
        imgRecipe.clipsToBounds = true
        imgRecipe.layer.cornerRadius = 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func favoriteAction(_ sender: UIButton) {
        if flagFavorite == false{
            sender.setBackgroundImage(#imageLiteral(resourceName: "star-8.png"), for: UIControlState.normal)
            flagFavorite = true
            
        }
        else{
            sender.setBackgroundImage(#imageLiteral(resourceName: "star-9.png") , for: UIControlState.normal)
            flagFavorite = false
        }
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
