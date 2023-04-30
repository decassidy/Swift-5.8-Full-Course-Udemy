/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Initializers](Initializers)
/*:
 ## Default Initializers
 
 As described in [Default Initializers](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization/#Default-Initializers)\, Swift automatically provides a *default initializer* without any arguments for any structure or base class that provides default values for all of its properties and doesn’t provide at least one initializer itself.

 A *default initializer* has the same access level as the type it *initializes*, unless that type is defined as `public`. For a type that’s defined as public, the default initializer is considered internal. If you want a public type to be initializable with a no-argument initializer when used in another module, you must explicitly provide a public no-argument initializer yourself as part of the type’s definition.
*/
//: [Default Memberwise Initializers for Structure Types](Default%20Memberwise%20Initializers%20for%20Structure%20Types)
