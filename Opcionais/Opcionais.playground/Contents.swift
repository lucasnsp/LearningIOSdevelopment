import UIKit

// Opcionais

// 1 . OPTIONALS (Consegue especificar valores padrões(defaults)
// 2. Force-unwrap | Retirar o valor de dentro do optional utilizar ! após um valor, assim dezemos para o Swift eu sei que não existe um valor default aqui, mas confie em mim existe um valor, mas isso é muito perigoso, temos que ver primeiro se vamos conseguir descompactar esse valor, se conseguirmos, continuamos se não, não fazemos isso.
// 3. Garantir com uma condição se realmente tem o valor dentro do optional (if let)

func megaSenaGenerator(total: Int?, maxNumber: Int?) -> Set<Int> {
    var numbers = total ?? 6
    var result: Set<Int> = []

    while(numbers > 0) {
        if let max = maxNumber { //  tenta atribuir nessa variavel o valor que está envelopado nesse opcional.
            let generated = Int.random(in: 1...max)
            let res = result.insert(generated)

            if (res.inserted) {
                numbers = numbers - 1
            }
        } else {
            break
        }
    }
    
    return result
}
var maxNumber: Int?
maxNumber = 60

let res1 = megaSenaGenerator(total: nil, maxNumber: maxNumber)
print(res1)

// outro exemplo:

var username: String? = "Lucas"
var phone: String? = nil
var password: String = "123123"

func login(username: String?, phone: String?, password: String) {
    if let phone = phone {
        print("Fazer o login via telefone: \(phone)")
    } else if let username = username {
        print("Fazer o login via username: \(username)")
    } else {
        print("Error! na tela do usuario. Informando que ele precisa adicionar o telefone ou o nome de usuario")
    }
}

login(username: username, phone: phone, password: password)

// Resumindo

// 1. Poder ter valor padrão

let name: String? = "Lucas Neves"
let ch = name?.count ?? 0
print(ch)

// 2. Descompactar - force
let ch2 = name!.count
print(ch2)

// 3. Descompactar - SEGURO
if let ch3 = name?.count {
    print(ch3)
}
