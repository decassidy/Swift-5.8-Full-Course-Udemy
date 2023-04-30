struct Vector2D {
    var x = 0.0, y = 0.0
}

/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Prefix and Postfix Operators](Prefix%20and%20Postfix%20Operators)
/*:
 ## Compound Assignment Operators
 
 *Compound assignment operators* combine assignment (`=`) with another operation. For example, the addition assignment operator (`+=`) combines addition and assignment into a single operation. You mark a compound assignment operator’s left input parameter type as `inout`, because the parameter’s value will be modified directly from within the operator method.

 The example below implements an addition assignment operator method for `Vector2D` instances:
*/
 extension Vector2D {
     static func += (left: inout Vector2D, right: Vector2D) {
         left = left + right
     }
 }
/*:
 Because an addition operator was defined earlier, you don’t need to reimplement the addition process here. Instead, the addition assignment operator method takes advantage of the existing addition operator method, and uses it to set the left value to be the left value plus the right value:
*/
 var original = Vector2D(x: 1.0, y: 2.0)
 let vectorToAdd = Vector2D(x: 3.0, y: 4.0)
 original += vectorToAdd
 // original now has values of (4.0, 6.0)
/*:
 - Note:It isn’t possible to overload the default assignment operator (`=`). Only the compound assignment operators can be overloaded. Similarly, the ternary conditional operator `(a ? b : c)` can’t be overloaded.
*/
//: [Equivalence Operators](Equivalence%20Operators)
