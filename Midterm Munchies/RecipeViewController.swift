//
//  RecipeViewController.swift
//  Midterm Munchies
//
//  Created by Ryan Tomlinson on 12/20/15.
//  Copyright © 2015 Lockness Software. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

    @IBOutlet weak var recipeName: UILabel!
    
    var recipeTitleLabel = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.hidden = true
        recipeName.text = recipeTitleLabel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setRecipeTitle(name: String) {
        recipeTitleLabel = name
        recipeName.text = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
