//
//  TextsConfig.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 15/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation
import UIKit



class LabelFormatter {
    static func estiloDeCabecalhoDaPagina (parameter: UILabel, text: String, x: Int, y: Int) -> UILabel{
        
        parameter.font = UIFont (name: "MavenPro-Bold", size: 24)
        parameter.text = text
        parameter.textAlignment = .left
        //parameter.frame = CGRect (x: x, y: y, width: 250, height: 28)
        parameter.textColor = #colorLiteral(red: 0.3449999988, green: 0.5839999914, blue: 0.1920000017, alpha: 1)
        
        return parameter
    }
    
    static func estiloDeSubtitulo (parameter: UILabel, text: String, x: Int, y: Int) -> UILabel {
        
        parameter.font = UIFont (name: "Raleway-Medium", size: 20)
        parameter.text = text
        parameter.textAlignment = .left
        //parameter.frame = CGRect (x: x, y: y, width: 153, height: 26)
        parameter.textColor = #colorLiteral(red: 0.3449999988, green: 0.5839999914, blue: 0.1920000017, alpha: 1)
        
        return parameter
    }
    
    static func estiloDePeriodoDeDias (parameter: UILabel, text: String, x: Int, y: Int) -> UILabel {
        
        parameter.font = UIFont (name: "Raleway-Light", size: 18)
        parameter.text = text
        parameter.textAlignment = .left
        //parameter.frame = CGRect (x: x, y: y, width: 153, height: 26)
        parameter.textColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        
        return parameter
    }
    
    static func estiloDeDiasDaSemana (parameter: UILabel, text: String, x: Int, y: Int) -> UILabel {
        
        parameter.font = UIFont (name: "Raleway-mEDIUM", size: 16)
        parameter.text = text
        parameter.textAlignment = .left
        //parameter.frame = CGRect (x: x, y: y, width: 153, height: 26)
        parameter.textColor = #colorLiteral(red: 0.2549999952, green: 0.4350000024, blue: 0.1410000026, alpha: 1)
        
        return parameter
    }
    
    static func estiloDeTextoSimples (parameter: UILabel, text: String, x: Int, y: Int) -> UILabel {
        
        parameter.font = UIFont (name: "Raleway-Light", size: 16)
        parameter.text = text
        parameter.textAlignment = .left
        //parameter.frame = CGRect (x: x, y: y, width: 153, height: 26)
        parameter.textColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        
        return parameter
    }
    
    static func estiloDeTextoSimples2 (parameter: UILabel, text: String, x: Int, y: Int) -> UILabel {
        
        parameter.font = UIFont (name: "Raleway-Regular", size: 16)
        parameter.text = text
        parameter.textAlignment = .left
        //parameter.frame = CGRect (x: x, y: y, width: 153, height: 26)
        parameter.textColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        
        return parameter
    }
    
    static func estiloDeDiasDePlanejamento (parameter: UILabel, text: String) -> UILabel {
        
        parameter.font = UIFont (name: "Raleway-Light", size: 13)
        parameter.text = text
        parameter.textAlignment = .left
        //parameter.frame = CGRect (x: x, y: y, width: 153, height: 26)
        parameter.textColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        
        return parameter
    }
}
