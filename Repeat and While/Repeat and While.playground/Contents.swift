import UIKit

// Repeat and While

/* While CONDICAO {
    BLOCO DE looping
}*/

// Looping infinito.
// Com o While ele checa primeiro a condição.
var i = 1

while i < 10 {
    print(i)
    i += i
}

// Com o REPEAT ele faz primeiro uma instrução, depois ele checa a condição (ou seja pelo menos uma vez ele irá executar)

i = 1
repeat {
    print(i)
    i += 1
} while (i < 10)
