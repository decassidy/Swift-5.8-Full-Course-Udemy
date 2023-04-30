/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Precedence and Associativity](Precedence%20and%20Associativity)
/*:
 ## Operator Methods
 
 Classes and structures can provide their own implementations of existing operators. This is known as overloading the existing operators.

 The example below shows how to implement the arithmetic addition operator (`+`) for a custom structure. The arithmetic addition operator is a binary operator because it operates on two targets and it’s an infix operator because it appears between those two targets.

 The example defines a `Vector2D` structure for a two-dimensional position vector `(x, y)`, followed by a definition of an operator method to add together instances of the `Vector2D` structure:
*/
 struct Vector2D {
     var x = 0.0, y = 0.0
 }

 extension Vector2D {
     static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
     }
 }
/*:
 The operator method is defined as a type method on `Vector2D`, with a method name that matches the operator to be overloaded (`+`). Because addition isn’t part of the essential behavior for a vector, the type method is defined in an extension of `Vector2D` rather than in the main structure declaration of `Vector2D`. Because the arithmetic addition operator is a binary operator, this operator method takes two input parameters of type `Vector2D` and returns a single output value, also of type `Vector2D`.

 In this implementation, the input parameters are named left and right to represent the `Vector2D` instances that will be on the left side and right side of the `+` operator. The method returns a new `Vector2D` instance, whose `x` and `y` properties are initialized with the sum of the `x` and `y` properties from the two `Vector2D` instances that are added together.

 The type method can be used as an infix operator between existing `Vector2D` instances:
*/
 let vector = Vector2D(x: 3.0, y: 1.0)
 let anotherVector = Vector2D(x: 2.0, y: 4.0)
 let combinedVector = vector + anotherVector
 // combinedVector is a Vector2D instance with values of (5.0, 5.0)
/*:
 This example adds together the vectors (`3.0, 1.0`) and (`2.0, 4.0`) to make the vector (`5.0, 5.0`), as illustrated below.
*/
//: ![](operators14.png)
//: [Prefix and Postfix Operators](Prefix%20and%20Postfix%20Operators)
