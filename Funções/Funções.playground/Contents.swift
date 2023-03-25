import UIKit

// Funções

// Sem função

//var numbers = 6
//var result: Set<Int> = []
//
//while(numbers > 0) {
//    let generated = Int.random(in: 1...60) // Gerar numeros aleatorios de 1 até 60.
//    let res = result.insert(generated) // coleção de dados sem repetição.
//
//    if (res.inserted) { // Essa faz um boolean
//        numbers = numbers - 1
//        print(result)
//    }
//}
//
//// funções -> BLOCOS DE CÓDIGO QUE PODEMOS REUTILIZAR EM OUTRAS PARTES DO PROJETO.
//
//
//func megaSenaGenerator() { // <- A declaração
//    var numbers = 6
//    var result: Set<Int> = []
//
//    while(numbers > 0) {
//        let generated = Int.random(in: 1...60) // Gerar numeros aleatorios de 1 até 60.
//        let res = result.insert(generated) // coleção de dados sem repetição.
//
//        if (res.inserted) { // Essa faz um boolean
//            numbers = numbers - 1
//            print(result)
//        }
//    }
//}
//
//megaSenaGenerator()


// funções podem receber parametros

//func megaSenaGenerator2(total: Int) { // <- A declaração (Dessa forma podemos especificar o numero que queremos de apostas, ou seja, quantos numeros serão generados para a aposta da mega sena.
//
//    var numbers = total // Aqui na nossa variavel temos que trocar, se não ele dará um erro.
//    var result: Set<Int> = []
//
//    while(numbers > 0) {
//        let generated = Int.random(in: 1...60) // Gerar numeros aleatorios de 1 até 60.
//        let res = result.insert(generated) // coleção de dados sem repetição.
//
//        if (res.inserted) { // Essa faz um boolean
//            numbers = numbers - 1
//            print(result)
//        }
//    }
//}
//
//megaSenaGenerator2(total: 8)
//
//megaSenaGenerator2(total: 13)

//                            // Parametros
//func megaSenaGenerator3(total: Int, maxNumber: Int) { // <- A declaração (Dessa forma podemos especificar o numero que queremos de apostas, ou seja, quantos numeros serão generados para a aposta da mega sena e no max number o numero maximo do range para gerar os numeros aleatorios.
//
//    var numbers = total // Aqui na nossa variavel temos que trocar, se não ele dará um erro.
//    var result: Set<Int> = []
//
//    while(numbers > 0) {
//        let generated = Int.random(in: 1...maxNumber) // Aqui definimos que o numero max que estaremos sorteando dentro do nosso range é definido pelo argumento na hora de chamar a função.
//        let res = result.insert(generated) // coleção de dados sem repetição.
//
//        if (res.inserted) { // Essa faz um boolean
//            numbers = numbers - 1
//            print(result)
//        }
//    }
//}
//                        // Argumentos
//megaSenaGenerator3(total: 8, maxNumber: 45)

                            // Parametros
func megaSenaGenerator4(total: Int, maxNumber: Int) -> Set<Int> { // na seta para o lado devemos colocar qual o tipo de valor que saira no nosso return.
    var numbers = total
    var result: Set<Int> = []

    while(numbers > 0) {
        let generated = Int.random(in: 1...maxNumber)
        let res = result.insert(generated)

        if (res.inserted) {
            numbers = numbers - 1
        }
    }
    return result // aqui ele nos retornará o resultado e não precisaremos mais do print que estavamos utilizando.
}

// Agora devemos criar uma constante para nos trazer os resultados desses valores.

let res1 = megaSenaGenerator4(total: 6, maxNumber: 59)
print(res1)

let res2 = megaSenaGenerator4(total: 10, maxNumber: 45)
print(res2)
