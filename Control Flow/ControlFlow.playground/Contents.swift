import UIKit

// Begin Control Flow

let individualScore = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScore {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Applessed"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickname: String? =  nil
let fullName: String = "John Applessed"
let informalGreeting = "Hi \(nickname ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a long.")
case "cucumber", "watercress":
    print("That wold make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is a spicy \(x)?")
default:
    print("Everything tastes good in a soup")
}

