//
//  ViewController.swift
//  Midterm Munchies
//
//  Created by Justin Carruthers on 12/7/15.
//  Copyright © 2015 Lockness Software. All rights reserved.
//

import UIKit

class RecipeListController: UITableViewController {

    var recipeList: [Recipe]
    
    required init?(coder aDecoder: NSCoder) {
        recipeList = [Recipe]()
        super.init(coder: aDecoder)
        makeTestRecipes()
    }
    
    func makeTestRecipes() {
        var recipe: Recipe = Recipe(name: "Beef Lasagna", description: "A beef lasagna with marinara sauce")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Steak", description: "How to cook the perfect steak")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 3", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 4", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 5", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe  = Recipe(name: "Recipe 6", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 7", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 8", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 9", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 10", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 11", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 12", description: "This is a recipe")
        recipeList.append(recipe)
        recipe = Recipe(name: "Recipe 13", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 14", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 15", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 16", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 17", description: "This is a recipe")
        recipeList.append(recipe)
        
        recipe = Recipe(name: "Recipe 18", description: "This is a recipe")
        recipeList.append(recipe)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tabBarController?.tabBar.hidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RecipeTableItem")! as UITableViewCell
        let recipe = recipeList[indexPath.row]
        
        cell.textLabel?.text = recipe.name
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let recipeViewController = segue.destinationViewController as! RecipeViewController
        
        let recipePressed: Recipe = recipeList[indexPath.row]
        
        recipeViewController.recipe = recipePressed
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    


}

