/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Closure Expression Syntax](Closure%20Expression%20Syntax)
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
/*:
 ## Inferring Type From Context

 Because the sorting closure is passed as an argument to a method, Swift can infer the types of its parameters and the type of the value it returns. The `sorted(by:)` method is being called on an array of strings, so its argument must be a function of type `(String, String) -> Bool`. This means that the `(String, String)` and `Bool` types don’t need to be written as part of the closure expression’s definition. Because all of the types can be inferred, the return arrow `(->)` and the parentheses around the names of the parameters can also be omitted:
*/
var reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
/*:
 It’s always possible to infer the parameter types and return type when passing a closure to a function or method as an inline closure expression. As a result, you never need to write an inline closure in its fullest form when the closure is used as a function or method argument.

 Nonetheless, you can still make the types explicit if you wish, and doing so is encouraged if it avoids ambiguity for readers of your code. In the case of the `sorted(by:)` method, the purpose of the closure is clear from the fact that sorting is taking place, and it’s safe for a reader to assume that the closure is likely to be working with `String` values, because it’s assisting with the sorting of an array of strings.
*/
//: [Implicit Returns from Single-Expression Closures](Implicit%20Returns%20from%20Single-Expression%20Closures)
