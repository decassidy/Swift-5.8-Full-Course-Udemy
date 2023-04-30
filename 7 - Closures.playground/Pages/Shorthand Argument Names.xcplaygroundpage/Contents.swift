/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Implicit Returns from Single-Expression Closures](Implicit%20Returns%20from%20Single-Expression%20Closures)
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
/*:
 ## Shorthand Argument Names

 Swift automatically provides shorthand argument names to inline closures, which can be used to refer to the values of the closure’s arguments by the names `$0`, `$1`, `$2`, and so on.

 If you use these shorthand argument names within your closure expression, you can omit the closure’s argument list from its definition. The type of the shorthand argument names is inferred from the expected function type, and the highest numbered shorthand argument you use determines the number of arguments that the closure takes. The in keyword can also be omitted, because the closure expression is made up entirely of its body:
*/
var reversedNames = names.sorted(by: { $0 > $1 } )
/*:
 Here, `$0` and `$1` refer to the closure’s first and second String arguments. Because `$1` is the shorthand argument with highest number, the closure is understood to take two arguments. Because the `sorted(by:)` function here expects a closure whose arguments are both strings, the shorthand arguments `$0` and `$1` are both of type `String`.
*/
//: [Operator Methods ->](Operator%20Methods)
