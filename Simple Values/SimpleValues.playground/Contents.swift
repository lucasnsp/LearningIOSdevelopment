import UIKit

// Begin Simple Values
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitIntenger = 70
let ImplicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4

let label = "This width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let OrangesAndApplesSummary = "I have \(oranges) oranges and \(apples) apples, this is a good day. "
let fruitSummary = " I have \(apples + oranges) fruits to eat in my breakfast today. "

let betterText = """
Today its going to be a good day, no matter what.
"""

var shoppingList = ["Apples", "Coca-Cola", "Bread"]
shoppingList[2] = "Pizza"

var Occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]
Occupations["Jayne"] = "Public Relations"

(Occupations)

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]
