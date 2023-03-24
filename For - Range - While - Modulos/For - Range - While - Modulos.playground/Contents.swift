import UIKit

// For - Range - While - Modulos

// Loop FOR

// Sequencias (ranges)

let range = 0...5 // Inclusive 0 a 5
let r = 0..<5 // exclusive 0 a 4

var limit = 5
let rg = 0..<limit

// for é controlado pelo range

var sum = 0
let count = 10

for i in 1...count { //  variavel imutavel
    sum += i
}
print(sum)

// Ignorar o index
for _ in 1...count where count > 50 {
    print("Oi")
}

5 % 2 //  Resultado 1 porque 5 % 2 sobra da divisão.
6 % 2 // Resultado da 0 porque não sobra nada da divisão.

for i in 0...count where i % 2 == 0 {
    print(" Indice é: \(i)")
}

