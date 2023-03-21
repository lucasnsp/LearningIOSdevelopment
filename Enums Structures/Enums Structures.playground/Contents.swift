import UIKit

// Enums e Structures

enum Rank: Int {
    case ace = 1
    case two, three, Four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
let aceDescription = ace.simpleDescription()
let king = Rank.king.rawValue

if let convertedRank = Rank (rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let heart = Suit.hearts
let heartDescription = heart.simpleDescription()


enum ServerResponse {
    case result(String, String)
    case failure(String)
}
let success = ServerResponse.result("6:00 am", "8:00 pm")
let error = ServerResponse.failure("Out of service")

switch success {
case let.result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Error... \(message)")
}

// Structures

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

// Diferença entre Class e Struct

class GoogleSheet {
    var author: String
    init(author: String) {
        self.author = author
    }
}

let file = GoogleSheet(author: "Pedro")
let author = file.author
let fileChanged = file
fileChanged.author = "Robson"
let authorChanged = fileChanged.author
print(file.author)

struct Excel {
    var author: String
}

let fileExcel = Excel(author: "Pedro")
var fileExcelChanged = fileExcel
fileExcelChanged.author = "João"
print(fileExcel.author)
