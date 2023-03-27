import UIKit

// Guard Let (variaveis Seguras)

func fetchProductById(id: Int) -> String {
    /// Aqui seria o Banco
    ///
    let dict = [
        1: "Iphone",
        2: "Macbook",
        3: "Ipad"
    ]
    var username: String? = nil
    var password: String? = nil
    
    // if let
    // primeiro verifica o sucesso, se der sucesso, retorna, se não, retorna o erro.
    
//    if let product = dict[id] {
//        return product
//    } else {
//        return "nenhum produto encontrado"
//    }
    
    // guard let                  Se ele não encontrar o id do produto ele ja pega esse retorno
    guard let product =  dict[id],
          let username = username,
          let password = password else { return "Todos os campos são obrigatórios"}
    
    // para que nessa linha todos os valores não sejam mais opcionais
    // vai ter um valor
    
    
    return product
}
print(fetchProductById(id: 3))


