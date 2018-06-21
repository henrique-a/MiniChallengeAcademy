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
    @IBOutlet weak var txtCheck: UIButton!
    
    var flag = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Config Label's
        txtItem = LabelFormatter.estiloDeTextoSimples(parameter: txtItem, text: "", x: 19, y: 165)
        txtDetails = LabelFormatter.estiloDeTextoSimples2(parameter: txtDetails, text: "", x: 18, y: 192)
        txtTotalItens = LabelFormatter.estiloDeTextoSimples2(parameter: txtTotalItens, text: "", x: 294, y: 191)
        
        
        // Config Ckeck Button
        txtCheck.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        txtCheck.layer.cornerRadius = 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //Check List
    @IBAction func btnClick(_ sender: UIButton) {
        if flag == false{
            sender.setBackgroundImage( #imageLiteral(resourceName: "icons8-selecionado-48.png"), for: UIControlState.normal)
            flag = true

        }
        else{
            sender.setBackgroundImage( UIImage(), for: UIControlState.normal)
            flag = false
        }
    }
}
