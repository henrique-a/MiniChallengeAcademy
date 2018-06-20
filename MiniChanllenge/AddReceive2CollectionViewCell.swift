//
//  AddReceive2CollectionViewCell.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class AddReceive2CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgCollection2: UIImageView!
    @IBOutlet weak var lblCollection2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Label Config
        lblCollection2 = LabelFormatter.estiloDeTextoCard(parameter: lblCollection2, text: "", x: 0, y: 0)
        //txtReceipeName.backgroundColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        lblCollection2.layer.shadowOpacity = 5.0
        //Image Config
        imgCollection2.layer.cornerRadius = 12
        
        //teste
        //lblCollection2.backgroundColor = #colorLiteral(red: 0.9179999828, green: 0.4629999995, blue: 0.2389999926, alpha: 1)
        
        //Cell Config
        self.backgroundColor = #colorLiteral(red: 0.949000001, green: 0.9449999928, blue: 0.9449999928, alpha: 1)
        self.layer.cornerRadius = 12
        self.layer.shadowColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        self.layer.shadowRadius = 1
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize.init(width: 3.0, height: 5.0)
        self.clipsToBounds = false
        self.layer.masksToBounds = false
        //
        //        //Image Config
        //        imgReceipe.contentMode = .scaleAspectFill
    }
}
