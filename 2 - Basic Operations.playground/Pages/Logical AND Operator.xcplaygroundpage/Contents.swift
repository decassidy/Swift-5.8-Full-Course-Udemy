/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Logical NOT Operator](Logical%20NOT%20Operator)
/*:
 ## Logical AND Operator

 The *logical AND operator* `(a && b)` creates logical expressions where both values must be `true` for the overall expression to also be `true`.

 If either value is `false`, the overall expression will also be `false`. In fact, if the first value is `false`, the second value won’t even be evaluated, because it can’t possibly make the overall expression equate to `true`. This is known as short-circuit evaluation.

 This example considers two `Bool` values and only allows access if both values are `true`:
*/
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"
//: [Logical OR Operator ->](Logical%20OR%20Operator)
