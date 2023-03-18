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

let interesentingNumbers = [
    "Prime": [2, 3, 5, 11, 13],
    "Fibtonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0
var key = ""
for (_key, numbers) in interesentingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            key = _key
        }
    }
}

print(largest)
print(key)

var n = 2
while n < 100 {
    n *= 2
}

print(n)


var m = 2
repeat {
    m *= 2
} while m < 100
print (m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)

var newTotal = 0
for i in 0...4 {
    newTotal += i
}

print(newTotal)

