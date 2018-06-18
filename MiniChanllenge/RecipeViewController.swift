//
//  RecipeViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 18/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    @IBOutlet weak var txtRecipe: UILabel!
    @IBOutlet weak var imgRecipe: UIImageView!
    @IBOutlet weak var txtRecipeName: UILabel!
    @IBOutlet weak var txtPrepareTime: UILabel!
    @IBOutlet weak var btnFavorite: UIButton!
    @IBOutlet weak var txtIngredients: UILabel!
    @IBOutlet weak var txtIngredientsDetails: UILabel!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var txtPrepare: UILabel!
    @IBOutlet weak var txtPrepareDetails: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
