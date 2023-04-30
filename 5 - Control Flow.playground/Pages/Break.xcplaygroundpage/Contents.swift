/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Continue](Continue)
/*:
 ## Break

 The `break` statement ends execution of an entire control flow statement immediately. The `break` statement can be used inside a `switch` or loop statement when you want to terminate the execution of the `switch` or loop statement earlier than would otherwise be the case.
*/
/*:
 ## Break in a Loop Statement

 When used inside a loop statement, break ends the loop’s execution immediately and transfers control to the code after the loop’s closing brace `(})`. No further code from the current iteration of the loop is executed, and no further iterations of the loop are started.
*/
/*:
 ## Break in a Switch Statement

 When used inside a `switch` statement, `break` causes the `switch` statement to end its execution immediately and to transfer control to the code after the `switch` statement’s closing brace `(})`.

 This behavior can be used to match and ignore one or more cases in a `switch` statement. Because Swift’s `switch` statement is exhaustive and doesn’t allow empty cases, it’s sometimes necessary to deliberately match and ignore a case in order to make your intentions explicit. You do this by writing the `break` statement as the entire body of the case you want to ignore. When that case is matched by the `switch` statement, the break statement inside the case ends the switch statement’s execution immediately.
*/
/*:
 - Note:A `switch` case that contains only a comment is reported as a compile-time error. Comments aren’t statements and don’t cause a `switch` case to be ignored. Always use a `break` statement to ignore a `switch` case.
*/
/*:
 The following example switches on a `Character` value and determines whether it represents a number symbol in one of four languages. For brevity, multiple values are covered in a single `switch` case.
*/
let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}

if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}
// Prints "The integer value of 三 is 3."
/*:
 This example checks `numberSymbol` to determine whether it’s a Latin, Arabic, Chinese, or Thai symbol for the numbers `1` to `4`. If a match is found, one of the `switch` statement’s cases sets an optional `Int?` variable called `possibleIntegerValue` to an appropriate integer value.

 After the `switch` statement completes its execution, the example uses optional binding to determine whether a value was found. The `possibleIntegerValue` variable has an implicit initial value of `nil` by virtue of being an optional type, and so the optional binding will succeed only if `possibleIntegerValue` was set to an actual value by one of the switch statement’s first four cases.

 Because it’s not practical to list every possible `Character` value in the example above, a `default` case handles any characters that aren’t matched. This `default` case doesn’t need to perform any action, and so it’s written with a single `break` statement as its body. As soon as the default case is matched, the `break` statement ends the `switch` statement’s execution, and code execution continues from the `if let` statement.
*/
//: [Fallthrough ->](Fallthrough)
