//
//  PlanejamentoTableViewCell.swift
//  MiniChanllenge
//
//  Created by Paulo Jose on 20/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class PlanejamentoTableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    
    var daysLabelArr = [UILabel]()
    
    var dayLabelPosY = 40.0
    let dayLabelInitalX = 14.0
    let spaceBetweenX = 42.0

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        //Config View
        view.layer.cornerRadius = 15.0
        view.layer.shadowColor = #colorLiteral(red: 0.4390000105, green: 0.4390000105, blue: 0.4390000105, alpha: 1)
        view.layer.shadowRadius = 1
        view.layer.shadowOpacity = 0.3
        view.layer.shadowOffset = CGSize.init(width: 3.0, height: 5.0)
        view.clipsToBounds = false
        view.layer.masksToBounds = false
        
        //Label's Config
        var segLabel = UILabel(frame: CGRect(x: dayLabelInitalX, y: dayLabelPosY, width: 30.0, height: 15.0))
        segLabel = LabelFormatter.estiloDeDiasDeCardDePlanejameto(parameter: segLabel, text: "Seg")
        daysLabelArr.append(segLabel)
        view.addSubview(segLabel)
        
        var terLabel = UILabel(frame: CGRect(x: dayLabelInitalX + (spaceBetweenX * 1), y: dayLabelPosY, width: 30.0, height: 15.0))
        terLabel = LabelFormatter.estiloDeDiasDeCardDePlanejameto(parameter: terLabel, text: "Ter")
        daysLabelArr.append(terLabel)
        view.addSubview(terLabel)
        
        var quaLabel = UILabel(frame: CGRect(x: dayLabelInitalX + (spaceBetweenX * 2), y: dayLabelPosY, width: 30.0, height: 15.0))
        quaLabel = LabelFormatter.estiloDeDiasDeCardDePlanejameto(parameter: quaLabel, text: "Qua")
        daysLabelArr.append(quaLabel)
        view.addSubview(quaLabel)
        
        var quiLabel = UILabel(frame: CGRect(x: dayLabelInitalX + (spaceBetweenX * 3), y: dayLabelPosY, width: 30.0, height: 15.0))
        quiLabel = LabelFormatter.estiloDeDiasDeCardDePlanejameto(parameter: quiLabel, text: "Qui")
        daysLabelArr.append(quiLabel)
        view.addSubview(quiLabel)
        
        var sexLabel = UILabel(frame: CGRect(x: dayLabelInitalX + (spaceBetweenX * 4), y: dayLabelPosY, width: 30.0, height: 15.0))
        sexLabel = LabelFormatter.estiloDeDiasDeCardDePlanejameto(parameter: sexLabel, text: "Sex")
        daysLabelArr.append(sexLabel)
        view.addSubview(sexLabel)
        
        var sabLabel = UILabel(frame: CGRect(x: dayLabelInitalX + (spaceBetweenX * 5), y: dayLabelPosY, width: 30.0, height: 15.0))
        sabLabel = LabelFormatter.estiloDeDiasDeCardDePlanejameto(parameter: sabLabel, text: "Sab")
        daysLabelArr.append(sabLabel)
        view.addSubview(sabLabel)
        
        var domLabel = UILabel(frame: CGRect(x: dayLabelInitalX + (spaceBetweenX * 6), y: dayLabelPosY, width: 33.0, height: 15.0))
        domLabel = LabelFormatter.estiloDeDiasDeCardDePlanejameto(parameter: domLabel, text: "Dom")
        daysLabelArr.append(domLabel)
        view.addSubview(domLabel)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
