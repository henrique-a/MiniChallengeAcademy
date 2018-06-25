//
//  PlannerCollectionViewCell.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class PlannerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var txtWeekDay: UILabel!
    @IBOutlet weak var txtDay: UILabel!
    @IBOutlet weak var txtMonth: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Cell Config
        self.backgroundColor = #colorLiteral(red: 0.949000001, green: 0.9449999928, blue: 0.9449999928, alpha: 1)
        self.layer.cornerRadius = 12
        self.layer.shadowColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        self.layer.shadowRadius = 1
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize.init(width: 3.0, height: 5.0)
        self.clipsToBounds = false
        self.layer.masksToBounds = false
        
        //Label's Config
        txtWeekDay = LabelFormatter.estiloDeTextoSemanaMes(parameter: txtWeekDay, text: "")
        txtDay = LabelFormatter.estiloDeTextoDia(parameter: txtDay, text: "")
        txtMonth = LabelFormatter.estiloDeTextoSemanaMes(parameter: txtMonth, text: "")
    }
   
}
