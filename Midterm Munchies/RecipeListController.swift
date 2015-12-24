//
//  RecipeListController.swift
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
        //makeTestRecipes()
        let path = NSBundle.mainBundle().pathForResource("recipe", ofType: "json")
        parseRecipes(path!)
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
    
    func parseRecipes(atPath: String) {
        let jsonData = NSData(contentsOfFile: atPath)
        let json = JSON(data: jsonData!)
        
        for (_, subJson):(String, JSON) in json["recipes"] {
            let name = String(subJson["name"])
            let description = String(subJson["description"])
            let instructions = String(subJson["instructions"])
            let prepTime = Int(String(subJson["cookTimes", "prepTime"]))
            let cookTime = Int(String(subJson["cookTimes", "cookTime"]))
            var ingredients: [Ingredient] = []
            for (_, ingredientJSON):(String, JSON) in subJson["ingredients"] {
                let ingredientName = String(ingredientJSON["name"])
                let amount = Float(String(ingredientJSON["quantity","amount"]))
                let unitAsString: String = String(ingredientJSON["quantity", "unit"])
                var unit: Unit?
                switch (unitAsString){
                    case "grams":
                        unit = Unit.Grams
                        break
                    case "ounces":
                        unit = Unit.Ounces
                        break
                    case "cups":
                        unit = Unit.Cups
                        break
                    case "pounds":
                        unit = Unit.Pounds
                        break
                    case "teaspoon":
                        unit = Unit.Teaspoon
                        break
                    case "tablespoon":
                        unit = Unit.Teaspoon
                        break
                    default:
                        break
                }
                let quantity = Quantity(amount: amount!, unit: unit!)
                let ingredient = Ingredient(name: ingredientName, quantity: quantity)
                ingredients.append(ingredient)
            }
            
            let cookTimes = CookingTimes(prepTime: prepTime!, cookTime: cookTime!)
            let recipe = Recipe(name, ingredients: ingredients, description: description, instructions: instructions, cookingTimes: cookTimes)
            recipeList.append(recipe)
        }
    }

}

