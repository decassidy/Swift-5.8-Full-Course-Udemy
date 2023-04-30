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
//: [Optional Protocol Requirements](Optional%20Protocol%20Requirements)
/*:
 ## Protocol Extensions
 
 Protocols can be extended to provide method, initializer, subscript, and computed property implementations to conforming types. This allows you to define behavior on protocols themselves, rather than in each type’s individual conformance or in a global function.

 For example, the `RandomNumberGenerator` protocol can be extended to provide a `randomBool()` method, which uses the result of the required `random()` method to return a random `Bool` value:
*/
 extension RandomNumberGenerator {
     func randomBool() -> Bool {
         return random() > 0.5
     }
 }
/*:
 By creating an extension on the protocol, all conforming types automatically gain this method implementation without any additional modification.
*/
 let generator = LinearCongruentialGenerator()
 print("Here's a random number: \(generator.random())")
 // Prints "Here's a random number: 0.3746499199817101"
 print("And here's a random Boolean: \(generator.randomBool())")
 // Prints "And here's a random Boolean: true"
/*
 Protocol extensions can add implementations to conforming types but can’t make a protocol extend or inherit from another protocol. Protocol inheritance is always specified in the protocol declaration itself.
 */
//: [Providing Default Implementations](Providing%20Default%20Implementations)
