protocol SomeProtocol {
    init(someParameter: Int)
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Initializer Requirements](Initializer%20Requirements)
/*:
 ## Class Implementations of Protocol Initializer Requirements
 
 You can implement a protocol initializer requirement on a conforming class as either a designated initializer or a convenience initializer. In both cases, you must mark the initializer implementation with the required modifier:
*/
 class SomeClass: SomeProtocol {
     required init(someParameter: Int) {
         // initializer implementation goes here
     }
 }
/*:
 The use of the required modifier ensures that you provide an explicit or inherited implementation of the initializer requirement on all subclasses of the conforming class, such that they also conform to the protocol.

 For more information on required initializers, see [Required Initializers](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization/#Required-Initializers)\.
*/
/*:
 - Note:You don’t need to mark protocol initializer implementations with the `required` modifier on classes that are marked with the `final` modifier, because final classes can’t subclassed. For more about the `final` modifier, see [Preventing Overrides](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance/#Preventing-Overrides)\.
*/
/*:
 If a subclass overrides a designated initializer from a superclass, and also implements a matching initializer requirement from a protocol, mark the initializer implementation with both the `required` and `override` modifiers:
*/
 class SomeSuperClass {
     init() {
         // initializer implementation goes here
     }
 }

class SomeSubClass: SomeSuperClass, SomeProtocol {
    required init(someParameter: Int) {
        //
    }
    
     // "required" from SomeProtocol conformance; "override" from SomeSuperClass
     required override init() {
         // initializer implementation goes here
     }
 }
//: [Failable Initializer Requirements](Failable%20Initializer%20Requirements)
