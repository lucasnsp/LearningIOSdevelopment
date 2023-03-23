import UIKit

// Arrays

//let userNames: [String] = ["Tiago", "Jorge", "Cleiton"]

var userNames: [String] = []

userNames.append("Filipe")

userNames += ["Steve", "Elon"]

let name = userNames[0]
name


// Fatiar
let firstThree = Array(userNames[1...2])
firstThree[0]

// adicionar elementos

userNames.append("novo registro")

// Remover todos elementos
//userNames.removeAll()

// funções de condições do array

userNames.isEmpty // verificar lista vazia

userNames.count // verificar tamanho da lista

userNames.contains("Filipe") // verificar se a lista contém algum elemento

userNames.first // Acessar o primeiro elemento da lista

if let first = userNames.first {
    print(first)
}

// inserir no index x (especifico)

userNames.insert("Aguiar", at: 0)

// remover no inde x (especifico)

userNames.remove(at: 0 )

let removedLast = userNames.removeLast()
userNames

// trocar uma fatia especifica de um elemento.

userNames[0...1] = ["Novo1", "Novo2", "Novo3"]

userNames

// trocar por indice

userNames.swapAt(0, 1)
