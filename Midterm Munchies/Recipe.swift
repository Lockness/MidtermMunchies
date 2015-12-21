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
    var description: String
    var instructions: String
    var cookingTimes: CookingTimes?
    var favorite: Bool
    
    convenience init(name: String, description: String) {
        self.init(name, ingredients: [], description: description, instructions: "", cookingTimes: CookingTimes(prepTime: 1, cookTime: 2))
    }
    
    init(_ name: String, ingredients: [Ingredient], description: String, instructions: String, cookingTimes: CookingTimes) {
        self.name = name
        self.ingredients = ingredients
        self.description = description
        self.instructions = instructions
        self.cookingTimes = cookingTimes
        self.favorite = false
    }
    
    func addIngredient(ingredient: Ingredient) {
        self.ingredients.append(ingredient)
    }
    
    func renameTo(name: String) {
        self.name = name
    }
    
}

class CookingTimes {
    
    var prepTime: Int
    var cookTime: Int
    var totalTime: Int {
        get {
            return prepTime + cookTime
        }
    }
    
    init(prepTime: Int, cookTime: Int) {
        self.prepTime = prepTime
        self.cookTime = cookTime
    }
    
    func updatePrepTime(time: Int) {
        self.prepTime = time
    }
    
    func updateCookTime(time: Int) {
        self.cookTime = time
    }

}