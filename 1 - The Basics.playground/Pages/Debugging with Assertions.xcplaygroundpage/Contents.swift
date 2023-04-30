/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Assertions and Preconditions](Assertions%20and%20Preconditions)
/*:
 ## Debugging with Assertions

 You write an assertion by calling the [assert(_:_:file:line:)](https://developer.apple.com/documentation/swift/assert(_:_:file:line:)) function from the Swift standard library. You pass this function an expression that evaluates to `true` or `false` and a message to display if the result of the condition is `false`. For example:
*/
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 isn't >= 0.
/*:
 In this example, code execution continues `if age >= 0` evaluates to `true`, that is, if the value of age is nonnegative. If the value of age is negative, as in the code above, then `age >= 0` evaluates to `false`, and the assertion fails, terminating the application.

 You can omit the assertion message — for example, when it would just repeat the condition as prose.
*/
assert(age >= 0)
/*:
 If the code already checks the condition, you use the [assertionFailure(_:file:line:)](https://developer.apple.com/documentation/swift/assertionfailure(_:file:line:)) function to indicate that an assertion has failed. For example:
*/
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}
//: [Enforcing Preconditions ->](Enforcing%20Preconditions)
