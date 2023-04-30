/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Mutating Method Requirements](Mutating%20Method%20Requirements)
/*:
 ## Initializer Requirements
 
 Protocols can require specific initializers to be implemented by conforming types. You write these initializers as part of the protocol’s definition in exactly the same way as for normal initializers, but without curly braces or an initializer body:
*/
 protocol SomeProtocol {
     init(someParameter: Int)
 }
//: [Class Implementations of Protocol Initializer Requirements](Class%20Implementations%20of%20Protocol%20Initializer%20Requirements)
