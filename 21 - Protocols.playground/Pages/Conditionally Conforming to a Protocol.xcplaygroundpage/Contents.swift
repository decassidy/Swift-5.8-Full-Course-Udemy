protocol TextRepresentable {
    var textualDescription: String { get }
}
protocol RandomNumberGenerator {
    func random() -> Double
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
extension Dice: TextRepresentable {
    var textualDescription: String {
        return "A \(sides)-sided dice"
    }
}
let d12 = Dice(sides: 12, generator: LinearCongruentialGenerator())
var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Adding Protocol Conformance with an Extension](Adding%20Protocol%20Conformance%20with%20an%20Extension)
/*:
 ## Conditionally Conforming to a Protocol
 
 A generic type may be able to satisfy the requirements of a protocol only under certain conditions, such as when the type’s generic parameter conforms to the protocol. You can make a generic type conditionally conform to a protocol by listing constraints when extending the type. Write these constraints after the name of the protocol you’re adopting by writing a generic where clause. For more about generic where clauses, see [Generic Where Clauses](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/generics/#Generic-Where-Clauses)\.

 The following extension makes Array instances conform to the TextRepresentable protocol whenever they store elements of a type that conforms to TextRepresentable.
*/
 extension Array: TextRepresentable where Element: TextRepresentable {
     var textualDescription: String {
         let itemsAsText = self.map { $0.textualDescription }
         return "[" + itemsAsText.joined(separator: ", ") + "]"
     }
 }
 let myDice = [d6, d12]
 print(myDice.textualDescription)
 // Prints "[A 6-sided dice, A 12-sided dice]"
//: [Declaring Protocol Adoption with an Extension](Declaring%20Protocol%20Adoption%20with%20an%20Extension)
