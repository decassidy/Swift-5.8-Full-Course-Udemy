protocol TextRepresentable {
    var textualDescription: String { get }
}
protocol RandomNumberGenerator {
    func random() -> Double
}
protocol DiceGame {
    var dice: Dice { get }
    func play()
}
protocol DiceGameDelegate: AnyObject {
    func gameDidStart(_ game: DiceGame)
    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
    func gameDidEnd(_ game: DiceGame)
}
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}
class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}
class SnakesAndLadders: DiceGame {
    let finalSquare = 25
    let dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
    var square = 0
    var board: [Int]
    init() {
        board = Array(repeating: 0, count: finalSquare + 1)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
    }
    weak var delegate: DiceGameDelegate?
    func play() {
        square = 0
        delegate?.gameDidStart(self)
        gameLoop: while square != finalSquare {
            let diceRoll = dice.roll()
            delegate?.game(self, didStartNewTurnWithDiceRoll: diceRoll)
            switch square + diceRoll {
            case finalSquare:
                break gameLoop
            case let newSquare where newSquare > finalSquare:
                continue gameLoop
            default:
                square += diceRoll
                square += board[square]
            }
        }
        delegate?.gameDidEnd(self)
    }
}
extension SnakesAndLadders: TextRepresentable {
    var textualDescription: String {
        return "A game of Snakes and Ladders with \(finalSquare) squares"
    }
}
class DiceGameTracker: DiceGameDelegate {
    var numberOfTurns = 0
    func gameDidStart(_ game: DiceGame) {
        numberOfTurns = 0
        if game is SnakesAndLadders {
            print("Started a new game of Snakes and Ladders")
        }
        print("The game is using a \(game.dice.sides)-sided dice")
    }
    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int) {
        numberOfTurns += 1
        print("Rolled a \(diceRoll)")
    }
    func gameDidEnd(_ game: DiceGame) {
        print("The game lasted for \(numberOfTurns) turns")
    }
}
let game = SnakesAndLadders()
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Collections of Protocol Types](Collections%20of%20Protocol%20Types)
/*:
 ## Protocol Inheritance
 
 A protocol can *inherit* one or more other protocols and can add further requirements on top of the requirements it inherits. The syntax for protocol inheritance is similar to the syntax for class inheritance, but with the option to list multiple inherited protocols, separated by commas:

*/
/*:
 ````
 protocol InheritingProtocol: SomeProtocol, AnotherProtocol {
     // protocol definition goes here
 }
 ````
*/
/*:
 Here’s an example of a protocol that inherits the TextRepresentable protocol from above:
*/
 protocol PrettyTextRepresentable: TextRepresentable {
     var prettyTextualDescription: String { get }
 }
/*:
 This example defines a new protocol, PrettyTextRepresentable, which inherits from TextRepresentable. Anything that adopts PrettyTextRepresentable must satisfy all of the requirements enforced by TextRepresentable, plus the additional requirements enforced by PrettyTextRepresentable. In this example, PrettyTextRepresentable adds a single requirement to provide a gettable property called prettyTextualDescription that returns a String.

 The SnakesAndLadders class can be extended to adopt and conform to PrettyTextRepresentable:
*/
 extension SnakesAndLadders: PrettyTextRepresentable {
     var prettyTextualDescription: String {
         var output = textualDescription + ":\n"
         for index in 1...finalSquare {
             switch board[index] {
             case let ladder where ladder > 0:
                 output += "▲ "
             case let snake where snake < 0:
                 output += "▼ "
             default:
                 output += "○ "
             }
         }
         return output
     }
 }
/*:
 This extension states that it adopts the PrettyTextRepresentable protocol and provides an implementation of the prettyTextualDescription property for the SnakesAndLadders type. Anything that’s PrettyTextRepresentable must also be TextRepresentable, and so the implementation of prettyTextualDescription starts by accessing the textualDescription property from the TextRepresentable protocol to begin an output string. It appends a colon and a line break, and uses this as the start of its pretty text representation. It then iterates through the array of board squares, and appends a geometric shape to represent the contents of each square:

 - If the square’s value is greater than 0, it’s the base of a ladder, and is represented by ▲.

 - If the square’s value is less than 0, it’s the head of a snake, and is represented by ▼.

 - Otherwise, the square’s value is 0, and it’s a “free” square, represented by ○.

 The prettyTextualDescription property can now be used to print a pretty text description of any SnakesAndLadders instance:
*/
 print(game.prettyTextualDescription)
 // A game of Snakes and Ladders with 25 squares:
 // ○ ○ ▲ ○ ○ ▲ ○ ○ ▲ ▲ ○ ○ ○ ▼ ○ ○ ○ ○ ▼ ○ ○ ▼ ○ ▼ ○
//: [Class-Only Protocols](Class-Only%20Protocols)
