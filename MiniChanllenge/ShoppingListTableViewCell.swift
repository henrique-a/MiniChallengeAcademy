//
//  ShoppingListTableViewCell.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 15/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class ShoppingListTableViewCell: UITableViewCell {
    @IBOutlet weak var txtItem: UILabel!
    @IBOutlet weak var txtDetails: UILabel!
    @IBOutlet weak var txtTotalItens: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        txtItem = LabelFormatter.estiloDeTextoSimples(parameter: txtItem, text: "Default", x: 19, y: 165)
        txtDetails = LabelFormatter.estiloDeTextoSimples2(parameter: txtDetails, text: "2 Kg / R$ 3,00", x: 18, y: 192)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
