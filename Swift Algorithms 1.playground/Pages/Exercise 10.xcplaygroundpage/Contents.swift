import Foundation

/**
 Exercise 10:
 Write a program that stores various types of food and their price per kilogram in a dictionary. Create a way to show the price that any of the products would have when a specific number of kilograms is indicated.
 */


var fruitPrices: [String: Float] = [
    "Apple" : 12.5,
    "Banana": 5.90,
    "Carrot": 1.25,
    "Pumpkin": 6.59
]

func getFruitPrice(fruit: String, weight: Float) -> Float? {
    guard let pricePerKg = fruitPrices[fruit] else {return nil}
            
    return pricePerKg * weight
}


getFruitPrice(fruit: "Banana", weight: 2)
