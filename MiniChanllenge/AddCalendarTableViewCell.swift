//
//  AddCalendarTableViewCell.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 15/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class AddCalendarTableViewCell: UITableViewCell {
    @IBOutlet weak var txtDay: UILabel!
    @IBOutlet weak var txtTrocar: UIButton!
    @IBOutlet weak var txtMeal: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        txtTrocar = ButtonFormatter.buttonShort(parameter: txtTrocar, text: "Adicionar")
        txtMeal = LabelFormatter.estiloDeTextoSimples(parameter: txtMeal, text: "Vazio", x: 18, y: 226)
        txtDay = LabelFormatter.estiloDeDiasDaSemana(parameter: txtDay, text: "", x: 18, y: 226)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
