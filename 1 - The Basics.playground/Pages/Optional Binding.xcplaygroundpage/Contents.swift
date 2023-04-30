/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- If Statements and Forced Unwrapping](If%20Statements%20and%20Forced%20Unwrapping)
/*:
 ## Optional Binding

 You use *optional binding* to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with `if` and `while` statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action. `if` and `while` statements are described in more detail in [Control Flow](Control%20Flow).

 Write an optional binding for an if statement as follows:
*/
/*:
 - Callout(Example:):
 `if let <#constantName#> = <#someOptional#> {`\
   `<#statements#> `\
 `}`
*/
/*:
 You can rewrite the `possibleNumber` example from the [Optionals](Optionals) section to use optional binding rather than forced unwrapping:
*/
let possibleNumber = "123"

if let actualNumber = Int(possibleNumber) {
    print("The string \(possibleNumber) has an integer value of \(actualNumber)")
} else {
    print("The string \(possibleNumber) couldn't be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"
/*:
 This code can be read as:

 “If the optional `Int` returned by `Int(possibleNumber)` contains a value, set a new constant called `actualNumber` to the value contained in the optional.”

 If the conversion is successful, the `actualNumber` constant becomes available for use within the first branch of the `if` statement. It has already been initialized with the value contained *within* the optional, and so you don’t use the `!` suffix to access its value. In this example, `actualNumber` is simply used to print the result of the conversion.

 If you don’t need to refer to the original, optional constant or variable after accessing the value it contains, you can use the same name for the new constant or variable:
*/
let myNumber = Int(possibleNumber)
// Here, myNumber is an optional integer
if let myNumber = myNumber {
    // Here, myNumber is a non-optional integer
    print("My number is \(myNumber)")
}
// Prints "My number is 123"
/*:
 This code starts by checking whether `myNumber` contains a value, just like the code in the previous example. If `myNumber` has a value, the value of a new constant named `myNumber` is set to that value. Inside the body of the `if` statement, writing `myNumber` refers to that new non-optional constant. Before the beginning of the `if` statement and after its end, writing `myNumber` refers to the optional integer constant.

 Because this kind of code is so common, you can use a shorter spelling to unwrap an optional value: write just the name of the constant or variable that you’re unwrapping. The new, unwrapped constant or variable implicitly uses the same name as the optional value.
*/
if let myNumber {
    print("My number is \(myNumber)")
}
// Prints "My number is 123"
/*:
 You can use both constants and variables with optional binding. If you wanted to manipulate the value of `myNumber` within the first branch of the `if` statement, you could write `if var myNumber` instead, and the value contained within the optional would be made available as a variable rather than a constant. Changes you make to `myNumber` inside the body of the if statement apply only to that local variable, not to the original, optional constant or variable that you unwrapped.

 You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas. If any of the values in the optional bindings are `nil` or any Boolean condition evaluates to `false`, the whole if statement’s condition is considered to be `false`. The following if statements are equivalent:
*/
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"


if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100"
/*:
 - Note: Constants and variables created with optional binding in an `if` statement are available only within the body of the `if` statement. In contrast, the constants and variables created with a guard statement are available in the lines of code that follow the `guard` statement, as described in [Early Exit](Early%20Exit).
*/
//: [Implicitly Unwrapped Optionals ->](Implicitly%20Unwrapped%20Optionals)
