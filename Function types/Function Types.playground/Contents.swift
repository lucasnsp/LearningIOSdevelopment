import UIKit

// Function Types | Resolvendo problemas com prog. funcional

func sum(x: Int, y: Int) -> Int {
    return x + y
}

func divide(x: Int, y: Int) -> Int {
   return x / y
}

func multi(x: Int, y: Int) -> Int {
    return x * y
}

// + , - , / , * , raiz

func calc(a: Int, b: Int , operation: (Int, Int) -> Int) {
    print("a: \(a)")
    print("b: \(b)")
    let result = operation(a, b)
    print("resultado: \(result)")
}

// let resultado = nome_da_funcao()

calc(a: 5, b: 5, operation: sum(x:y:))
calc(a: 100, b: 5, operation: divide(x:y:))
calc(a: 50, b: 37, operation: multi(x:y:))

// in-line foma enxuta

calc(a: 23, b: 87, operation: {a, b in a * b})

// Forma mais enxuta ainda

calc(a: 78, b: 877) {x, y in x * y}

// ==============================

func callServer(url: String, callback: (Int) -> () )  {
    // Aqui dentro do callServer a gente chama o servidor e ele demora (latencia)
    let code = 200 // <-- Ela demora
    callback(code)
}

callServer(url: "https://meusite.com") { code in
    if code == 200 {
        print("Chamada com sucesso no servidor, mostrar proxima tela.")
    } else {
        print("Ops! deu erro na chamada do servidor")
    }
}
