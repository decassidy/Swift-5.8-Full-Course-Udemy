/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Debugging with Assertions](Debugging%20with%20Assertions)
/*:
 ## Enforcing Preconditions

 Use a precondition whenever a condition has the potential to be `false`, but must *definitely* be true for your code to continue execution. For example, use a precondition to check that a subscript isn’t out of bounds, or to check that a function has been passed a valid value.

 You write a precondition by calling the [`precondition(_:_:file:line:)`](https://developer.apple.com/documentation/swift/precondition(_:_:file:line:)) function. You pass this function an expression that evaluates to true or false and a message to display if the result of the condition is false. For example:
*/
var index = 0
// In the implementation of a subscript...
precondition(index > 0, "Index must be greater than zero.")
/*:
 You can also call the [`preconditionFailure(_:file:line:)`](https://developer.apple.com/documentation/swift/preconditionfailure(_:file:line:)) function to indicate that a failure has occurred — for example, if the default case of a switch was taken, but all valid input data should have been handled by one of the switch’s other cases.
*/
/*:
 - Note:If you compile in unchecked mode (-Ounchecked), preconditions aren’t checked. The compiler assumes that preconditions are always true, and it optimizes your code accordingly. However, the `fatalError(_:file:line:)` function always halts execution, regardless of optimization settings.

    You can use the `fatalError(_:file:line:)` function during prototyping and early development to create stubs for functionality that hasn’t been implemented yet, by writing `fatalError("Unimplemented")` as the stub implementation. Because fatal errors are never optimized out, unlike assertions or preconditions, you can be sure that execution always halts if it encounters a stub implementation.
*/
//: [Basic Operations ->](Basic%20Operations)
