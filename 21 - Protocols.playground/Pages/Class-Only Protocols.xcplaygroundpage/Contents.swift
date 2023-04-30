/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Protocol Inheritance](Protocol%20Inheritance)
/*:
 ## Class-Only Protocols
 
 You can limit protocol adoption to class types (and not structures or enumerations) by adding the AnyObject protocol to a protocol’s inheritance list.

 
 ````
 protocol SomeClassOnlyProtocol: AnyObject, SomeInheritedProtocol {
     // class-only protocol definition goes here
 }
 ````
 
 In the example above, `SomeClassOnlyProtocol` can only be adopted by class types. It’s a compile-time error to write a structure or enumeration definition that tries to adopt `SomeClassOnlyProtocol`.
*/
/*:
 - Note:Use a class-only protocol when the behavior defined by that protocol’s requirements assumes or requires that a conforming type has reference semantics rather than value semantics. For more about reference and value semantics, see [Structures and Enumerations Are Value Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/#Structures-and-Enumerations-Are-Value-Types) and [Classes Are Reference Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/#Classes-Are-Reference-Types)\.
*/
//: [Protocol Composition](Protocol%20Composition)
