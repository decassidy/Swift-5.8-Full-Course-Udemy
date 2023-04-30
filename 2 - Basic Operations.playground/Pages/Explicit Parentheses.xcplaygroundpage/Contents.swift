/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Combining Logical Operators](Combining%20Logical%20Operators)
/*:
 ## Explicit Parentheses

 It’s sometimes useful to include parentheses when they’re not strictly needed, to make the intention of a complex expression easier to read. In the door access example above, it’s useful to add parentheses around the first part of the compound expression to make its intent explicit:
*/
let enteredDoorCode = true
let passedRetinaScan = false
let hasDoorKey = false
let knowsOverridePassword = true

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"
/*:
 The parentheses make it clear that the first two values are considered as part of a separate possible state in the overall logic. The output of the compound expression doesn’t change, but the overall intention is clearer to the reader. Readability is always preferred over brevity; use parentheses where they help to make your intentions clear.
*/
//: [Strings and Characters ->](Strings%20and%20Characters)
