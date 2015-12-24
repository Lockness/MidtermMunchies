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
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    let favoritesSelectedImage: UIImage = UIImage(named: "FavoritesSelected")!
    let favoritesImage: UIImage = UIImage(named: "Favorites")!
    var recipe: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.hidden = true
        recipeNameLabel.text = recipe.name

        if (recipe.favorite) {
            favoriteButton.image = favoritesSelectedImage
        }
        if (!recipe.favorite) {
            favoriteButton.image = favoritesImage
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func changeFavoriteOnClick(sender: AnyObject) {
        recipe.favorite = !(recipe.favorite)
        print(recipe.favorite)
        
        if (recipe.favorite) {
            favoriteButton.image = favoritesSelectedImage
        }
        if (!recipe.favorite) {
            favoriteButton.image = favoritesImage
        }
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
