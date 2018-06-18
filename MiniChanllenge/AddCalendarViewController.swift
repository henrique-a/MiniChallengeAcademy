//
//  AddCalendarViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 15/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit


class AddCalendarViewController: UIViewController {
    @IBOutlet weak var txtAddCalendar: UILabel!
    @IBOutlet weak var txtCalendar: UILabel!
    @IBOutlet weak var txtCurrentWeek: UILabel!
    
    @IBOutlet weak var tvWeek: UITableView!
    
    var arrayWeek: [String]! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayWeek = ["Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado", "Domingo"]
        
        //Set Background Color
        self.view.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        
        //Set Labels Config.
        txtAddCalendar = LabelFormatter.estiloDeCabecalhoDaPagina(parameter: txtAddCalendar, text: "Adicionar na Agenda", x: 18, y: 64)
        txtCalendar = LabelFormatter.estiloDeSubtitulo(parameter: txtCalendar, text: "Agenda Atual", x: 18, y: 117)
        txtCurrentWeek = LabelFormatter.estiloDePeriodoDeDias(parameter: txtCurrentWeek, text: "15/05/2018 - 17/05/2018", x: 18, y: 143)
        
        
        self.tvWeek.dataSource = self
        self.tvWeek.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        self.tvWeek.reloadData()
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
extension AddCalendarViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvWeek.dequeueReusableCell(withIdentifier: "CellAddAgenda") as! AddCalendarTableViewCell
        
        cell.txtDay.text = arrayWeek[indexPath.row]
        
        return cell
    }
    
    
}
