/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Associated Types in Action](Associated%20Types%20in%20Action)
/*:
 ## Extending an Existing Type to Specify an Associated Type
 
 You can extend an existing type to add conformance to a protocol, as described in [Adding Protocol Conformance with an Extension](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols/#Adding-Protocol-Conformance-with-an-Extension)\. This includes a protocol with an associated type.

 Swift’s `Array` type already provides an `append(_:)` method, a count property, and a subscript with an `Int` index to retrieve its elements. These three capabilities match the requirements of the `Container` protocol. This means that you can extend `Array` to conform to the `Container` protocol simply by declaring that `Array` adopts the protocol. You do this with an empty extension, as described in [Declaring Protocol Adoption with an Extension](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols/#Declaring-Protocol-Adoption-with-an-Extension)\:
*/
/*:
 ````
 extension Array: Container {}
````
*/
/*:
 Array’s existing `append(_:)` method and subscript enable Swift to infer the appropriate type to use for `Item`, just as for the generic `Stack` type above. After defining this extension, you can use any `Array` as a `Container`.
*/
//: [Adding Constraints to an Associated Type](Adding%20Constraints%20to%20an%20Associated%20Type)
