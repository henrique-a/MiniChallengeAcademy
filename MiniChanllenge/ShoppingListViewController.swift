//
//  ShoppingListViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 15/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class ShoppingListViewController: UIViewController {
    @IBOutlet weak var txtList: UILabel!
    @IBOutlet weak var txtTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtList = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtList, text: "Lista de Compras", x: 17, y: 62)
        txtTotal = LabelFormatter.estiloDeSubtitulo(parameter: txtTotal, text: "Total: R$ 200,00", x: 17, y: 108)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
