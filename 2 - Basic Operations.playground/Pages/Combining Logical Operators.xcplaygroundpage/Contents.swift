/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Logical OR Operator](Logical%20OR%20Operator)
/*:
 ## Combining Logical Operators

 You can combine multiple logical operators to create longer compound expressions:
*/
let enteredDoorCode = true
let passedRetinaScan = false
let hasDoorKey = false
let knowsOverridePassword = true

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"
/*:
 This example uses multiple `&&` and `||` operators to create a longer compound expression. However, the `&&` and `||` operators still operate on only two values, so this is actually three smaller expressions chained together. The example can be read as:

 If we’ve entered the correct door code and passed the retina scan, or if we have a valid door key, or if we know the emergency override password, then allow access.

 Based on the values of `enteredDoorCode`, `passedRetinaScan`, and `hasDoorKey`, the first two subexpressions are `false`. However, the emergency override password is known, so the overall compound expression still evaluates to `true`.
*/
/*:
 - Note: The Swift logical operators `&&` and `||` are left-associative, meaning that compound expressions with multiple logical operators evaluate the leftmost subexpression first.
*/
//: [Explicit Parentheses ->](Explicit%20Parentheses)
