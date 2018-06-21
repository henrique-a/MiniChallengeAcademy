//
//  ReceitaTeste.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 20/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class ReceitaTeste {
    var nome: String
    var ingredientes: String
    var preparo: String
    var tempo: String
    var imagem: UIImage
    var favorito = false
    
    init(aNome: String, aIngredientes: String, aPreparo: String, aTempo: String, aImagem: UIImage) {
        
        self.nome = aNome
        self.ingredientes = aIngredientes
        self.preparo = aPreparo
        self.tempo = "Tempo de Preparo = " + aTempo
        self.imagem = aImagem
    }
}
