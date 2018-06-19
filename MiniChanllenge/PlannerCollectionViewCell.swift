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
        
        self.backgroundColor = #colorLiteral(red: 0.949000001, green: 0.9449999928, blue: 0.9449999928, alpha: 1)
        self.layer.cornerRadius = 12
        
    }
   
}
