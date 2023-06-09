/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Access Levels for Unit Test Targets](Access%20Levels%20for%20Unit%20Test%20Targets)
/*:
 ## Access Control Syntax
 
 Define the access level for an entity by placing one of the open, `public`, `internal`, `fileprivate`, or `private` modifiers at the beginning of the entity’s declaration.
*/
/*:
 ````
 public class SomePublicClass {}
 internal class SomeInternalClass {}
 fileprivate class SomeFilePrivateClass {}
 private class SomePrivateClass {}

 public var somePublicVariable = 0
 internal let someInternalConstant = 0
 fileprivate func someFilePrivateFunction() {}
 private func somePrivateFunction() {}
 ````
*/
/*:
 Unless otherwise specified, the default access level is internal, as described in [Default Access Levels](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/#Default-Access-Levels)\. This means that SomeInternalClass and someInternalConstant can be written without an explicit access-level modifier, and will still have an access level of internal:
*/
/*:
 ````
 class SomeInternalClass {}              // implicitly internal
 let someInternalConstant = 0            // implicitly internal
 ````
*/
//: [Custom Types](Custom%20Types)
