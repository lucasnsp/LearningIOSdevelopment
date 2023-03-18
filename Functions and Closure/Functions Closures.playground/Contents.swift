import UIKit

// Begin Functions and closures

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet(person: "Bob", day: "Tuesday")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet("John", on: "Wednesday")



func calculateStatics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statitics = calculateStatics(scores: [5, 3, 100, 3, 9])
print (statitics)

// Funções aninhadas

func returnFiftem() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFiftem()

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 9, 12]

hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({ (number:Int) -> Int in
    let result = 3 * number
    return result
})

let mapperNumbers = numbers.map({ number in 3 * number})
print (mapperNumbers)

let sortedNumber =  numbers.sorted { $0 < $1}
print(sortedNumber)
