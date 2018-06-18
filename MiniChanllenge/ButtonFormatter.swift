//
//  ButtonFormatter.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 15/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation
import UIKit

class ButtonFormatter {
    static func buttonShort (parameter: UIButton, text: String) -> UIButton{
        
        parameter.backgroundColor = #colorLiteral(red: 0.9179999828, green: 0.4629999995, blue: 0.2389999926, alpha: 1)
        parameter.setTitle(text , for: .normal )
        parameter.tintColor = #colorLiteral(red: 0.949000001, green: 0.9449999928, blue: 0.9449999928, alpha: 1)
        parameter.titleLabel?.font = UIFont (name: "Raleway-Regular", size: 18)
        parameter.layer.cornerRadius = 12
        parameter.frame.size = CGSize (width: 90, height: 23)
        
        return parameter
    }
    
    static func buttonLong (parameter: UIButton, text: String) -> UIButton{
        
        parameter.backgroundColor = #colorLiteral(red: 0.9179999828, green: 0.4629999995, blue: 0.2389999926, alpha: 1)
        parameter.setTitle(text, for: .normal )
        parameter.tintColor = #colorLiteral(red: 0.949000001, green: 0.9449999928, blue: 0.9449999928, alpha: 1)
        parameter.titleLabel?.font = UIFont (name: "Raleway-Regular", size: 18)
        parameter.layer.cornerRadius = 21
        parameter.frame.size = CGSize (width: 272.8, height: 42)
        
        return parameter
    }
}
//OBS: Verificar se o Radius deve ser igual ou diferente para os dois tipos de botões
