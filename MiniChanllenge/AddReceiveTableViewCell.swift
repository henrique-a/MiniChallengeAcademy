//
//  AddReceiveTableViewCell.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 19/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class AddReceiveTableViewCell: UITableViewCell {
    @IBOutlet weak var cvAddRecipe: UICollectionView!
    @IBOutlet weak var view2: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        view2.backgroundColor = #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        cvAddRecipe.backgroundColor =  #colorLiteral(red: 0.8899999857, green: 0.8899999857, blue: 0.8899999857, alpha: 1)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize (width: 300, height: 79)
        layout.minimumLineSpacing = CGFloat(17)
        layout.minimumInteritemSpacing = CGFloat(17)
        layout.scrollDirection = .horizontal
        self.cvAddRecipe.collectionViewLayout = layout
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setCollectionViewDelegate <D:UICollectionViewDelegate & UICollectionViewDataSource> (delegate: D, forRow row: Int){
        cvAddRecipe.delegate = delegate
        cvAddRecipe.dataSource = delegate
        cvAddRecipe.tag = row
        cvAddRecipe.reloadData()
    }
    
 

}
