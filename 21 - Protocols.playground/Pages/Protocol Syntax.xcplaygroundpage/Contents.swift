/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Protocols](Protocols)
/*:
 ## Protocol Syntax
 
 You define protocols in a very similar way to classes, structures, and enumerations:
 
 ````
 protocol SomeProtocol {
     // protocol definition goes here
 }
 ````
*/
/*:
 Custom types state that they adopt a particular protocol by placing the protocol’s name after the type’s name, separated by a colon, as part of their definition. Multiple protocols can be listed, and are separated by commas:
 
 ````
 struct SomeStructure: FirstProtocol, AnotherProtocol {
     // structure definition goes here
 }
 ````
*/
/*:
 If a class has a superclass, list the superclass name before any protocols it adopts, followed by a comma:
 
 ````
 class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
     // class definition goes here
 }
 ````
*/
//: [Property Requirements](Property%20Requirements)
