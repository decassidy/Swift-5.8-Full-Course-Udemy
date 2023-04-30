/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Sets](Sets)
/*:
 ## Hash Values for Set Types

 A type must be *hashable* in order to be stored in a set — that is, the type must provide a way to compute a hash value for itself. A hash value is an Int value that’s the same for all objects that compare equally, such that if `a == b`, the hash value of `a` is equal to the hash value of `b`.

 All of Swift’s basic types (such as `String`, `Int`, `Double`, and `Bool`) are hashable by default, and can be used as set value types or dictionary key types. Enumeration case values without associated values (as described in [Enumerations](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations/)) are also hashable by default.
*/
/*:
 - Note: You can use your own custom types as set value types or dictionary key types by making them conform to the Hashable protocol from the Swift standard library. For information about implementing the required `hash(into:)` method, see [Hashable](https://developer.apple.com/documentation/swift/hashable)\. For information about conforming to protocols, see [Protocols](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols/)\.
*/
//: [Set Type Syntax ->](Set%20Type%20Syntax)
