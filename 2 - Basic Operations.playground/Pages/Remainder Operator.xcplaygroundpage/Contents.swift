/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Arithmetic Operators](Arithmetic%20Operators)
/*:
 ## Remainder Operator

 The remainder operator `(a % b)` works out how many multiples of b will fit inside a and returns the value that’s left over (known as the remainder).
*/
/*:
 - Note: The remainder operator `(%)` is also known as a *modulo operator* in other languages. However, its behavior in Swift for negative numbers means that, strictly speaking, it’s a remainder rather than a modulo operation.
*/
/*:
 Here’s how the remainder operator works. To calculate `9 % 4`, you first work out how many 4s will fit inside 9:
*/
//: ![](RemainderOperator.png)
/*:
 You can fit two 4s inside 9, and the remainder is 1 (shown in orange).

 In Swift, this would be written as:
*/
9 % 4    // equals 1
/*:
 To determine the answer for `a % b`, the `%` operator calculates the following equation and returns remainder as its output:

 `a = (b x some multiplier) + remainder`

 where some multiplier is the largest number of multiples of `b` that will fit inside `a`.

 Inserting `9` and `4` into this equation yields:

 `9 = (4 x 2) + 1`

 The same method is applied when calculating the remainder for a negative value of `a`:
*/
-9 % 4   // equals -1
/*:
 Inserting `-9` and `4` into the equation yields:

 `-9 = (4 x -2) + -1`

 giving a remainder value of `-1`.

 The sign of `b` is ignored for negative values of `b`. This means that `a % b` and `a % -b` always give the same answer.
*/
//: [Unary Minus Operator ->](Unary%20Minus%20Operator)
