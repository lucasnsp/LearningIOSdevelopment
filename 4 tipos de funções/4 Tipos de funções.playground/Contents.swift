import UIKit

// Forma tradicional
func getFullName(firstname: String, lastname: String) -> String {
    return firstname + " " + lastname
}

let fullName = getFullName(firstname: "Tiago", lastname: "Aguiar")
print(fullName)




// terem um valor Padrão
func getFullName2(firstname: String, lastname: String = "Desconhecido") -> String {
    return firstname + " " + lastname
}

let fullName2 = getFullName2(firstname: "Tiago")
print(fullName2)




// Não definir o nome do argumento
func getFullName3(_ firstname: String, _ lastname: String) -> String {
    return firstname + " " + lastname
}

let fullName3 = getFullName3("Tiago", "Aguiar")
print(fullName3)




// Declarar nomes diferentes para argumentos vs parametros
func getFullName4(name firstname: String, lastname: String) -> String {
    return firstname + " " + lastname
}

let fullName4 = getFullName4(name: "Tiago", lastname: "Aguiar")
print(fullName4)



