struct Vector2D {
    var x = 0.0, y = 0.0
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Compound Assignment Operators](Compound%20Assignment%20Operators)
/*:
 ## Equivalence Operators
 
 By default, custom classes and structures don’t have an implementation of the *equivalence operators*, known as the equal to operator (`==`) and not equal to operator (`!=`). You usually implement the `==` operator, and use the standard library’s default implementation of the `!=` operator that negates the result of the `==` operator. There are two ways to implement the `==` operator: You can implement it yourself, or for many types, you can ask Swift to synthesize an implementation for you. In both cases, you add conformance to the standard library’s Equatable protocol.

 You provide an implementation of the `==` operator in the same way as you implement other infix operators:
*/
 extension Vector2D: Equatable {
     static func == (left: Vector2D, right: Vector2D) -> Bool {
        return (left.x == right.x) && (left.y == right.y)
     }
 }
/*:
 The example above implements an `==` operator to check whether two `Vector2D` instances have equivalent values. In the context of `Vector2D`, it makes sense to consider “equal” as meaning “both instances have the same `x` values and `y` values”, and so this is the logic used by the operator implementation.

 You can now use this operator to check whether two `Vector2D` instances are equivalent:
*/
 let twoThree = Vector2D(x: 2.0, y: 3.0)
 let anotherTwoThree = Vector2D(x: 2.0, y: 3.0)
 if twoThree == anotherTwoThree {
     print("These two vectors are equivalent.")
 }
 // Prints "These two vectors are equivalent."
/*:
 In many simple cases, you can ask Swift to provide synthesized implementations of the equivalence operators for you, as described in [Adopting a Protocol Using a Synthesized Implementation](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols/#Adopting-a-Protocol-Using-a-Synthesized-Implementation)\.
*/
//: [Custom Operators](Custom%20Operators)
