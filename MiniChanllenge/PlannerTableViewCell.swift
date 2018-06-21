//
//  PlannerTableViewCell.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class PlannerTableViewCell: UITableViewCell {
    @IBOutlet weak var txtMeal: UILabel!
    @IBOutlet weak var txtTime: UILabel!
    @IBOutlet weak var txtMealDetails: UILabel!
    @IBOutlet weak var btnCheckMeal: UIButton!
    @IBOutlet weak var btnAddMeal: UIButton!
    @IBOutlet weak var box: UILabel!
    
    var flag: Bool = false
    var delegate: PlannerTableViewDelegate?
    
    var tableLine: Int = -1
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        
        //Label's Formatter
        txtMeal = LabelFormatter.estiloDeTituloDeSecao(parameter: txtMeal, text: "", x: 0, y: 0)
        txtTime = LabelFormatter.estiloDeTextoSimples(parameter: txtTime, text: "", x: 0, y: 0)
        txtMealDetails = LabelFormatter.estiloDeReceicaoDia(parameter: txtMealDetails, text: "", x: 0, y: 0)
        box.layer.backgroundColor = #colorLiteral(red: 0.949000001, green: 0.9449999928, blue: 0.9449999928, alpha: 1)
        box.layer.cornerRadius = 12
        box.layer.shadowColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        box.layer.shadowRadius = 1
        box.layer.shadowOpacity = 0.3
        box.layer.shadowOffset = CGSize.init(width: 3.0, height: 5.0)
        
        //Button's Formatter
        btnCheckMeal.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        btnCheckMeal.layer.cornerRadius = 5
        
        btnAddMeal.tintColor = #colorLiteral(red: 0.9179999828, green: 0.4629999995, blue: 0.2389999926, alpha: 1)
        btnAddMeal.titleLabel?.font = UIFont (name: "Raleway-Bold", size: 16)
        
        
//        parameter.backgroundColor = #colorLiteral(red: 0.9179999828, green: 0.4629999995, blue: 0.2389999926, alpha: 1)
//        parameter.setTitle(text , for: .normal )
//        parameter.tintColor = #colorLiteral(red: 0.949000001, green: 0.9449999928, blue: 0.9449999928, alpha: 1)
//        parameter.titleLabel?.font = UIFont (name: "Raleway-Regular", size: 18)
//        parameter.layer.cornerRadius = 12
//        parameter.frame.size = CGSize (width: 90, height: 23)
        
    }
    
    @IBAction func btnCallAddRecipe(_ sender: UIButton) {
        print("Clicou")
        delegate?.btnTouched(row: tableLine)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
