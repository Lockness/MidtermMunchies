//
//  RecipeViewController.swift
//  Midterm Munchies
//
//  Created by Ryan Tomlinson on 12/20/15.
//  Copyright © 2015 Lockness Software. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

    @IBOutlet weak var recipeNameLabel: UILabel!
    
    var recipe: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.hidden = true
        recipeNameLabel.text = recipe.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func changeFavoriteOnClick(sender: AnyObject) {
        recipe.favorite = !(recipe.favorite)
        print(recipe.favorite)
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
