/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Logical Operators](Logical%20Operators)
/*:
 ## Logical NOT Operator

 The *logical NOT operator* `(!a)` inverts a Boolean value so that `true` becomes `false`, and `false` becomes `true`.

 The logical NOT operator is a prefix operator, and appears immediately before the value it operates on, without any white space. It can be read as “not a”, as seen in the following example:
*/
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"
/*:
 The phrase `if !allowedEntry` can be read as “if not allowed entry.” The subsequent line is only executed if “not allowed entry” is `true`; that is, `if allowedEntry` is `false`.

 As in this example, careful choice of Boolean constant and variable names can help to keep code readable and concise, while avoiding double negatives or confusing logic statements.
*/
//: [Logical AND Operator ->](Logical%20AND%20Operator)
