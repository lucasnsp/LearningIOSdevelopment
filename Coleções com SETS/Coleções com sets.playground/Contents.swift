import UIKit

// Coleções com SETS

// var newDict: [String:Int] = [:]
// var newArray: [String] = []

var newSet: Set<Int> = []

newSet.insert(10)
newSet.insert(3)
newSet.insert(10)

print(newSet)

let response = newSet.insert(4)
print(response)

print(newSet.contains(3))

// Para remover e validar oq foi removido

let removed = newSet.remove(4)
print(newSet)
print(removed)

// Para remover tudo

newSet.removeAll()
print(newSet)
