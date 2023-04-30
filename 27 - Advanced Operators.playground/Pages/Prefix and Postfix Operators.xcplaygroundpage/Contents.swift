struct Vector2D {
    var x = 0.0, y = 0.0
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Operator Methods](Operator%20Methods)
/*:
 ## Prefix and Postfix Operators
 
 The example shown above demonstrates a custom implementation of a binary infix operator. Classes and structures can also provide implementations of the standard unary operators. Unary operators operate on a single target. They’re prefix if they precede their target (such as `-a`) and postfix operators if they follow their target (such as `b!`).

 You implement a prefix or postfix unary operator by writing the `prefix` or `postfix` modifier before the func keyword when declaring the operator method:
*/
 extension Vector2D {
     static prefix func - (vector: Vector2D) -> Vector2D {
         return Vector2D(x: -vector.x, y: -vector.y)
     }
 }
/*:
 The example above implements the unary minus operator (`-a`) for `Vector2D` instances. The unary minus operator is a prefix operator, and so this method has to be qualified with the `prefix` modifier.

 For simple numeric values, the unary minus operator converts positive numbers into their negative equivalent and vice versa. The corresponding implementation for `Vector2D` instances performs this operation on both the `x` and `y` properties:
*/
 let positive = Vector2D(x: 3.0, y: 4.0)
 let negative = -positive
 // negative is a Vector2D instance with values of (-3.0, -4.0)
 let alsoPositive = -negative
 // alsoPositive is a Vector2D instance with values of (3.0, 4.0)
//: [Compound Assignment Operators](Compound%20Assignment%20Operators)
