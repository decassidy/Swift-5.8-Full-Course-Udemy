public class SomePublicClass {                  // explicitly public class
    public var somePublicProperty = 0            // explicitly public class member
    var someInternalProperty = 0                 // implicitly internal class member
    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}
class SomeInternalClass {                       // implicitly internal class
    var someInternalProperty = 0                 // implicitly internal class member
    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}
fileprivate class SomeFilePrivateClass {        // explicitly file-private class
    func someFilePrivateMethod() {}              // implicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}
private class SomePrivateClass {                // explicitly private class
    func somePrivateMethod() {}                  // implicitly private class member
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Tuple Types](Tuple%20Types)
/*:
 ## Function Types
 
 The access level for a function type is calculated as the most restrictive access level of the function’s parameter types and return type. You must specify the access level explicitly as part of the function’s definition if the function’s calculated access level doesn’t match the contextual default.

 The example below defines a global function called `someFunction()`, without providing a specific access-level modifier for the function itself. You might expect this function to have the default access level of “internal”, but this isn’t the case. In fact, `someFunction()` won’t compile as written below:
*/
// func someFunction() -> (SomeInternalClass, SomePrivateClass) {
//     // function implementation goes here
// }
/*:
 The function’s return type is a tuple type composed from two of the custom classes defined above in [Custom Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/#Custom-Types)\. One of these classes is defined as internal, and the other is defined as private. Therefore, the overall access level of the compound tuple type is private (the minimum access level of the tuple’s constituent types).

 Because the function’s return type is private, you must mark the function’s overall access level with the private modifier for the function declaration to be valid:
*/
// private func someFunction() -> (SomeInternalClass, SomePrivateClass) {
//     // function implementation goes here
// }
/*:
 It’s not valid to mark the definition of someFunction() with the public or internal modifiers, or to use the default setting of internal, because public or internal users of the function might not have appropriate access to the private class used in the function’s return type.
*/
//: [Enumeration Types](Enumeration%20Types)
