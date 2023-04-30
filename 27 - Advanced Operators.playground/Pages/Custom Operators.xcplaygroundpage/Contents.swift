struct Vector2D {
    var x = 0.0, y = 0.0
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Equivalence Operators](Equivalence%20Operators)
/*:
 ## Custom Operators
 
 You can declare and implement your own custom operators in addition to the standard operators provided by Swift. For a list of characters that can be used to define custom operators, see [Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/lexicalstructure/#Operators)\.

 New operators are declared at a global level using the `operator` keyword, and are marked with the `prefix`, `infix` or `postfix` modifiers:
*/
 prefix operator +++
/*:
 The example above defines a new prefix operator called `+++`. This operator doesn’t have an existing meaning in Swift, and so it’s given its own custom meaning below in the specific context of working with `Vector2D` instances. For the purposes of this example, `+++` is treated as a new “prefix doubling” operator. It doubles the `x` and `y` values of a `Vector2D` instance, by adding the vector to itself with the addition assignment operator defined earlier. To implement the `+++` operator, you add a type method called `+++` to `Vector2D` as follows:
*/
 extension Vector2D {
     static prefix func +++ (vector: inout Vector2D) -> Vector2D {
         vector += vector
         return vector
     }
 }

 var toBeDoubled = Vector2D(x: 1.0, y: 4.0)
 let afterDoubling = +++toBeDoubled
 // toBeDoubled now has values of (2.0, 8.0)
 // afterDoubling also has values of (2.0, 8.0)
//: [Precedence for Custom Infix Operators](Precedence%20for%20Custom%20Infix%20Operators)
