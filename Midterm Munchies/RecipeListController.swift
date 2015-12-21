//
//  ViewController.swift
//  Midterm Munchies
//
//  Created by Justin Carruthers on 12/7/15.
//  Copyright © 2015 Lockness Software. All rights reserved.
//

import UIKit

class RecipeListController: UITableViewController {

    
    // Initialize Recipe List
    var recipeList: [Recipe]
    required init?(coder aDecoder: NSCoder) {
    
        recipeList = [Recipe]()
    
        // Insert Recipes into recipe list (eventually parse json)
        let recipe1: Recipe = Recipe(name: "Chicken", description: "Good chicken")
        recipeList.append(recipe1)
        
        let recipe2: Recipe = Recipe(name: "Steak", description: "Great Steak")
        recipeList.append(recipe2)
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let logo = UIImage(named: "Apple_Swift_Logo.png")
//        let imageView = UIImageView(image:logo)
//        self.navigationItem.titleView = imageView
//        
//        // Set nav bar colors
//        let nav = self.navigationController?.navigationBar
//        nav?.barStyle = UIBarStyle.BlackOpaque
//        nav?.tintColor = UIColor.redColor()
//        
//        // Set tab bar colors
//        let tabBar = self.tabBarController?.tabBar
//        tabBar?.barStyle = UIBarStyle.BlackOpaque
//        tabBar?.tintColor = UIColor.redColor()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
//    override func viewDidAppear(animated: Bool) {
//        let nav = self.navigationController?.navigationBar
//        nav?.barStyle = UIBarStyle.BlackOpaque
//        nav?.tintColor = UIColor.redColor()
//        
//        let tabBar = self.tabBarController?.tabBar
//        tabBar?.barStyle = UIBarStyle.BlackOpaque
//        tabBar?.tintColor = UIColor.redColor()
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Returns total number of rows in recipe list
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeList.count
    }
    
    // Sets the visible cells to the appropriate recipe from the list
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RecipeTableItem")! as UITableViewCell
        let recipe = recipeList[indexPath.row]
        
        setTitleForCell(cell, withRecipetItem: recipe)
        
        return cell
    }
    
    // Sets the title of the recipe for a given visible cell
    func setTitleForCell(cell: UITableViewCell, withRecipetItem recipe: Recipe) {
        let label = cell.viewWithTag(1) as! UILabel
        label.text = recipe.name
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let recipePressed: Recipe = recipeList[indexPath.row]
        
        let recipeViewController = self.storyboard?.instantiateViewControllerWithIdentifier("RecipeViewController") as! RecipeViewController
        self.navigationController?.presentViewController(recipeViewController, animated: true, completion: nil)

        
        recipeViewController.recipeName.text = recipePressed.name
        
        
    }
    


}

