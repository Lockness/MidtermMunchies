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
    
        let recipe1: Recipe = Recipe(name: "Chicken", description: "Good chicken")
        recipeList.append(recipe1)
        
        let recipe2: Recipe = Recipe(name: "Steak", description: "Great Steak")
        recipeList.append(recipe2)
        
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
        
        
    }
    


}

