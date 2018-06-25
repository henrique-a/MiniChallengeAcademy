//
//  Controladora.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 21/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation
import UIKit

final class Controladora{
    static let controladora = Controladora ()
    var receitas: [ReceitaTeste] = []
    var mealsPlanning = [MealPlanningOnWeek]()
    var favoritos: [ReceitaTeste] = []
    var semana: RefeicaoSemana = RefeicaoSemana.init()
    
    private init () {
        mealsPlanning = [
            MealPlanningOnWeek(name: "Café da manhã"),
            MealPlanningOnWeek(name: "Lanche da manhã"),
            MealPlanningOnWeek(name: "Almoço"),
            MealPlanningOnWeek(name: "Lanche da tarde"),
            MealPlanningOnWeek(name: "Janta"),
            MealPlanningOnWeek(name: "Ceia")]
        
        
    }
}
