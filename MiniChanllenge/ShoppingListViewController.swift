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
    
    @IBOutlet weak var tvListaCompras: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtList = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtList, text: "Lista de Compras", x: 17, y: 62)
        txtTotal = LabelFormatter.estiloDeSubtitulo(parameter: txtTotal, text: "Total: R$ 200,00", x: 17, y: 108)
        
        
        self.tvListaCompras.separatorColor = #colorLiteral(red: 0.3449999988, green: 0.5839999914, blue: 0.1920000017, alpha: 0.4469999969)
        self.tvListaCompras.separatorInset = UIEdgeInsets(top: 0, left: 15.0, bottom: 0, right: 15.0)
        
        self.tvListaCompras.dataSource = self
        self.tvListaCompras.delegate = self
        
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
extension ShoppingListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvListaCompras.dequeueReusableCell(withIdentifier: "CellShoppingList") as! ShoppingListTableViewCell

        //cell.txtDay.text = arrayWeek[indexPath.row]
        cell.txtItem.text = "Teste"
        cell.txtDetails.text = "2 Kg / R$ 3.00"
        cell.txtTotalItens.text = "R$ 6.00"
        
        tvListaCompras.rowHeight = 80
        return cell
    }
    
    
}
