/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Default Memberwise Initializers for Structure Types](Default%20Memberwise%20Initializers%20for%20Structure%20Types)
/*:
 ## Protocols
 
 If you want to assign an explicit access level to a protocol type, do so at the point that you define the protocol. This enables you to create protocols that can only be adopted within a certain access context.

 The access level of each requirement within a protocol definition is automatically set to the same access level as the protocol. You can’t set a protocol requirement to a different access level than the protocol it supports. This ensures that all of the protocol’s requirements will be visible on any type that adopts the protocol.
*/
/*:
 - Note:If you define a public protocol, the protocol’s requirements require a public access level for those requirements when they’re implemented. This behavior is different from other types, where a public type definition implies an access level of internal for the type’s members.
*/
//: [Protocol Inheritance](Protocol%20Inheritance)
