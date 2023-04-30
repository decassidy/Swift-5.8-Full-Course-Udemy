/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Protocol Inheritance](Protocol%20Inheritance)
/*:
 ## Protocol Conformance
 
 A type can conform to a protocol with a lower access level than the type itself. For example, you can define a public type that can be used in other modules, but whose conformance to an internal protocol can only be used within the internal protocol’s defining module.

 The context in which a type conforms to a particular protocol is the minimum of the type’s access level and the protocol’s access level. For example, if a type is public, but a protocol it conforms to is internal, the type’s conformance to that protocol is also internal.

 When you write or extend a type to conform to a protocol, you must ensure that the type’s implementation of each protocol requirement has at least the same access level as the type’s conformance to that protocol. For example, if a public type conforms to an internal protocol, the type’s implementation of each protocol requirement must be at least internal.
*/
/*:
 - Note:In Swift, as in Objective-C, protocol conformance is global — it isn’t possible for a type to conform to a protocol in two different ways within the same program.
*/
//: [Extensions](Extensions)
