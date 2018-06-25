//
//  RefeicaoSemana.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 22/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation
class RefeicaoSemana {
    var arrayRefeicaoSemana: [RefeicaoDia]
    
    init() {
        self.arrayRefeicaoSemana = []
        var segunda = RefeicaoDia.init(dia: "Segunda")
        var terca = RefeicaoDia.init(dia: "Terça-Feira")
        var quarta = RefeicaoDia.init(dia: "Quarta-Feira")
        var quinta = RefeicaoDia.init(dia: "Quinta-Feira")
        var sexta = RefeicaoDia.init(dia: "Sexta-Feira")
        var sabado = RefeicaoDia.init(dia: "Sabado")
        var domingo = RefeicaoDia.init(dia: "Domingo")
        
        self.arrayRefeicaoSemana.append(segunda)
        self.arrayRefeicaoSemana.append(terca)
        self.arrayRefeicaoSemana.append(quarta)
        self.arrayRefeicaoSemana.append(quinta)
        self.arrayRefeicaoSemana.append(sexta)
        self.arrayRefeicaoSemana.append(sabado)
        self.arrayRefeicaoSemana.append(domingo)
    }
}
