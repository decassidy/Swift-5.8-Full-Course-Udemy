/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- nil](nil)
/*:
 ## If Statements and Forced Unwrapping

 You can use an `if` statement to find out whether an optional contains a value by comparing the optional against `nil`. You perform this comparison with the “equal to” operator (`==`) or the “not equal to” operator (`!=`).

 If an optional has a value, it’s considered to be “not equal to” `nil`:
*/
var convertedNumber: Int? = 123

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."
/*:
 Once you’re sure that the optional does contain a value, you can access its underlying value by adding an exclamation point (`!`) to the end of the optional’s name. The exclamation point effectively says, “I know that this optional definitely has a value; please use it.” This is known as *forced unwrapping* of the optional’s value:
*/
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// Prints "convertedNumber has an integer value of 123."
//: For more about the `if` statement, see [Control Flow](Control%20Flow).
/*:
 - Note: Trying to use `!` to access a nonexistent optional value triggers a runtime error. Always make sure that an optional contains a non-`nil` value before using `!` to force-unwrap its value.
*/
//: [Optional Binding ->](Optional%20Binding)
