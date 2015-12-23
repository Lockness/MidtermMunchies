//
//  Ingredient.swift
//  Midterm Munchies
//
//  Created by Justin Carruthers on 12/7/15.
//  Copyright © 2015 Lockness Software. All rights reserved.
//

import Foundation

class Ingredient {
    
    var name: String
    var quantity: Quantity
    
    init(name: String, quantity: Quantity) {
        self.name = name
        self.quantity = quantity
    }
    
    func renameTo(name: String) {
        self.name = name
    }
    
    func changeQuantity(amount: Float, unit: Unit) {
        self.quantity = Quantity(amount: amount, unit: unit)
    }
    
}

class Quantity {
    
    var amount: Float
    var unit: Unit
    
    init(amount: Float, unit: Unit) {
        self.amount = amount
        self.unit = unit
    }
    
    func changeAmountTo(amount: Float) {
        self.amount = amount
    }
    
    func changeUnitTo(unit: Unit) {
        self.unit = unit
    }
    
}

enum Unit {
    case Grams
    case Ounces
    case Cups
    case Pounds
    case Teaspoon
    case Tablespoon
}