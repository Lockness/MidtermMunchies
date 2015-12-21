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
    
        let recipe1: Recipe = Recipe(name: "Beef Lasagna", description: "A beef lasagna with marinara sauce")
        recipeList.append(recipe1)
        
        let recipe2: Recipe = Recipe(name: "Steak", description: "How to cook the perfect steak")
        recipeList.append(recipe2)
        
        let recipe3: Recipe = Recipe(name: "Recipe 3", description: "This is a recipe")
        recipeList.append(recipe3)
        
        let recipe4: Recipe = Recipe(name: "Recipe 4", description: "This is a recipe")
        recipeList.append(recipe4)
        
        let recipe5: Recipe = Recipe(name: "Recipe 5", description: "This is a recipe")
        recipeList.append(recipe5)
        
        let recipe6: Recipe = Recipe(name: "Recipe 6", description: "This is a recipe")
        recipeList.append(recipe6)
        
        let recipe7: Recipe = Recipe(name: "Recipe 7", description: "This is a recipe")
        recipeList.append(recipe7)
        
        let recipe8: Recipe = Recipe(name: "Recipe 8", description: "This is a recipe")
        recipeList.append(recipe8)
        
        let recipe9: Recipe = Recipe(name: "Recipe 9", description: "This is a recipe")
        recipeList.append(recipe9)
        
        let recipe10: Recipe = Recipe(name: "Recipe 10", description: "This is a recipe")
        recipeList.append(recipe10)
        
        let recipe11: Recipe = Recipe(name: "Recipe 11", description: "This is a recipe")
        recipeList.append(recipe11)
        
        let recipe12: Recipe = Recipe(name: "Recipe 12", description: "This is a recipe")
        recipeList.append(recipe12)
        
        let recipe13: Recipe = Recipe(name: "Recipe 13", description: "This is a recipe")
        recipeList.append(recipe13)
        
        let recipe14: Recipe = Recipe(name: "Recipe 14", description: "This is a recipe")
        recipeList.append(recipe14)
        
        let recipe15: Recipe = Recipe(name: "Recipe 15", description: "This is a recipe")
        recipeList.append(recipe15)
        
        let recipe16: Recipe = Recipe(name: "Recipe 16", description: "This is a recipe")
        recipeList.append(recipe16)
        
        let recipe17: Recipe = Recipe(name: "Recipe 17", description: "This is a recipe")
        recipeList.append(recipe17)
        
        let recipe18: Recipe = Recipe(name: "Recipe 18", description: "This is a recipe")
        recipeList.append(recipe18)
        
        super.init(coder: aDecoder)
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
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let recipeViewController = segue.destinationViewController as! RecipeViewController
        
        var recipeName : String
        let recipePressed: Recipe = recipeList[indexPath.row]
        
        recipeName = recipePressed.name
        
        recipeViewController.recipeName = recipeName
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        
    }
    


}

