//
//  RefeicaoDia.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 22/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation
class RefeicaoDia {
    var dia: String
    var arrayRefeicaoDia: [Refeicao]
    
    init(dia: String) {
        self.dia = dia
        self.arrayRefeicaoDia = []
        
        var cafeManha = Refeicao.init(nome: "Café da Manhã")
        var lancheManha = Refeicao.init(nome: "Lanche da Manhã")
        var almoco = Refeicao.init(nome: "Almoço")
        var lancheTarde = Refeicao.init(nome: "Lanche da Tarde")
        var jantar = Refeicao.init(nome: "Jantar")
        var ceia = Refeicao.init(nome: "Ceia")
        
        self.arrayRefeicaoDia.append(cafeManha)
        self.arrayRefeicaoDia.append(lancheManha)
        self.arrayRefeicaoDia.append(almoco)
        self.arrayRefeicaoDia.append(lancheTarde)
        self.arrayRefeicaoDia.append(jantar)
        self.arrayRefeicaoDia.append(ceia)
        
    }
}

