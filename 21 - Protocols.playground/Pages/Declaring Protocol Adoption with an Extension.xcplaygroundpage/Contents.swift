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
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Conditionally Conforming to a Protocol](Conditionally%20Conforming%20to%20a%20Protocol)
/*:
 ## Declaring Protocol Adoption with an Extension
 
 If a type already conforms to all of the requirements of a protocol, but hasn’t yet stated that it adopts that protocol, you can make it adopt the protocol with an empty extension:
*/
 struct Hamster {
     var name: String
     var textualDescription: String {
         return "A hamster named \(name)"
     }
 }
 extension Hamster: TextRepresentable {}
/*:
 Instances of Hamster can now be used wherever TextRepresentable is the required type:
*/
 let simonTheHamster = Hamster(name: "Simon")
 let somethingTextRepresentable: TextRepresentable = simonTheHamster
 print(somethingTextRepresentable.textualDescription)
 // Prints "A hamster named Simon"
/*:
 - Note:Types don’t automatically adopt a protocol just by satisfying its requirements. They must always explicitly declare their adoption of the protocol.
*/
//: [Adopting a Protocol Using a Synthesized Implementation](Adopting%20a%20Protocol%20Using%20a%20Synthesized%20Implementation)
