//
//  Recipe.swift
//  Midterm Munchies
//
//  Created by Justin Carruthers on 12/7/15.
//  Copyright © 2015 Lockness Software. All rights reserved.
//

import Foundation

class Recipe {
    
    var name: String
    var ingredients: [Ingredient] = []
    
    init(name: String) {
        self.name = name
    }
    
    func addIngredient(ingredient: Ingredient) {
        self.ingredients.append(ingredient)
    }
    
}