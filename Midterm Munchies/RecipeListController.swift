//
//  ViewController.swift
//  Midterm Munchies
//
//  Created by Justin Carruthers on 12/7/15.
//  Copyright © 2015 Lockness Software. All rights reserved.
//

import UIKit

class RecipeListController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tasty: Recipe = Recipe(name: "Chicken", description: "Good chicken")
        print(tasty.name)
        print(tasty.description)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

