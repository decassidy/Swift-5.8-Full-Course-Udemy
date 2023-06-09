/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Extensions](Extensions)
/*:
 ## Extension Syntax
 
 Declare extensions with the extension keyword:
*/
/*:
````
 extension SomeType {
     // new functionality to add to SomeType goes here
 }
````
*/
/*:
 An extension can extend an existing type to make it adopt one or more protocols. To add protocol conformance, you write the protocol names the same way as you write them for a class or structure:
*/
/*:
 ````
 extension SomeType: SomeProtocol, AnotherProtocol {
     // implementation of protocol requirements goes here
 }
 ````
*/
/*:
 Adding protocol conformance in this way is described in [Adding Protocol Conformance with an Extension](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols/#Adding-Protocol-Conformance-with-an-Extension).

 An extension can be used to extend an existing generic type, as described in [Extending a Generic Type](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/generics/#Extending-a-Generic-Type)\. You can also extend a generic type to conditionally add functionality, as described in [Extensions with a Generic Where Clause](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/generics/#Extensions-with-a-Generic-Where-Clause)\.
*/
/*:
 - Note:If you define an extension to add new functionality to an existing type, the new functionality will be available on all existing instances of that type, even if they were created before the extension was defined.
*/
//: [Computed Properties](Computed%20Properties)
