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
        
        print(recipe1.name)
        print(recipe1.description)
    
        print(recipe2.name)
        print(recipe2.description)
        
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RecipeTableItem")! as UITableViewCell
        let recipe = recipeList[indexPath.row]
        
        setTitleForCell(cell, withRecipetItem: recipe)
        
        return cell
    }
    
    func setTitleForCell(cell: UITableViewCell, withRecipetItem recipe: Recipe) {
        let label = cell.viewWithTag(1) as! UILabel
        label.text = recipe.name
    }


}

