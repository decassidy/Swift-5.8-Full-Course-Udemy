/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Logical AND Operator](Logical%20AND%20Operator)
/*:
 ## Logical OR Operator

 The *logical OR operator* `(a || b)` is an infix operator made from two adjacent pipe characters. You use it to create logical expressions in which only one of the two values has to be `true` for the overall expression to be `true`.

 Like the Logical AND operator above, the Logical OR operator uses short-circuit evaluation to consider its expressions. If the left side of a Logical OR expression is `true`, the right side isn’t evaluated, because it can’t change the outcome of the overall expression.

 In the example below, the first `Bool` value `(hasDoorKey)` is false, but the second value `(knowsOverridePassword)` is `true`. Because one value is `true`, the overall expression also evaluates to `true`, and access is allowed:
*/
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"
//: [Combining Logical Operators ->](Combining%20Logical%20Operators)
