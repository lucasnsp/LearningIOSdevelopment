import UIKit

// Dictionary vs Arrays

/* Array
    Indice
    Inteiros
    Sequencias
 
   Dict
    Chave - valor
    key - Value
    desornadas
 
    KEY = String, Int, { Outro Objeto }
*/

//var products: [String: Int] = [:]
//
//products["Apple"] = 5
//products["Google"] = 16
//
//print(products)

var products: [Int : String] = [
    1 : "Fone de Ouvido",
    2 : "Macbook",
    3 : "Impressora",
    4 : "Iphone"
]

print(products)

print(products[12] ?? "Nenhum valor encontrado para a chave 12")
 
// para atualizar um dict (somente trocar o valor da sua propriedade)

products[2] = "Macmini"
print(products[2] ?? "Nenhum valor encontrado para a chave 12")

// para contar elementos no dict
print(products.isEmpty)
print(products.count)

// remover
products[2] = nil
print(products)

// buscar todas as chaves de um dict
for key in products.keys {
    print(key)
}

// Buscar todos os valores

for val in products.values {
    print(val)
}
for (key, value) in products {
    print("chave: \(key), valor \(value)")
}
