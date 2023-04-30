struct Vector2D {
    var x = 0.0, y = 0.0
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Custom Operators](Custom%20Operators)
/*:
 ## Precedence for Custom Infix Operators
 
 Custom infix operators each belong to a precedence group. A precedence group specifies an operator’s precedence relative to other infix operators, as well as the operator’s associativity. See [Precedence and Associativity](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators/#Precedence-and-Associativity) for an explanation of how these characteristics affect an infix operator’s interaction with other infix operators.

 A custom infix operator that isn’t explicitly placed into a precedence group is given a default precedence group with a precedence immediately higher than the precedence of the ternary conditional operator.

 The following example defines a new custom infix operator called `+-`, which belongs to the precedence group `AdditionPrecedence`:
*/
 infix operator +-: AdditionPrecedence
 extension Vector2D {
     static func +- (left: Vector2D, right: Vector2D) -> Vector2D {
         return Vector2D(x: left.x + right.x, y: left.y - right.y)
     }
 }
 let firstVector = Vector2D(x: 1.0, y: 2.0)
 let secondVector = Vector2D(x: 3.0, y: 4.0)
 let plusMinusVector = firstVector +- secondVector
 // plusMinusVector is a Vector2D instance with values of (4.0, -2.0)
/*:
 This operator adds together the x values of two vectors, and subtracts the y value of the second vector from the first. Because it’s in essence an “additive” operator, it has been given the same precedence group as additive infix operators such as + and -. For information about the operators provided by the Swift standard library, including a complete list of the operator precedence groups and associativity settings, see [Operator Declarations](https://developer.apple.com/documentation/swift/operator-declarations)\. For more information about precedence groups and to see the syntax for defining your own operators and precedence groups, see [Operator Declaration](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/#Operator-Declaration)\.
*/
/*:
 - Note:You don’t specify a precedence when defining a prefix or postfix operator. However, if you apply both a prefix and a postfix operator to the same operand, the postfix operator is applied first.
*/
//: [Result Builders](Result%20Builders)
