/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Inferring Type From Context](Inferring%20Type%20From%20Context)
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
/*:
 ## Implicit Returns from Single-Expression Closures

 Single-expression closures can implicitly return the result of their single expression by omitting the return keyword from their declaration, as in this version of the previous example:
*/
var reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
/*:
 Here, the function type of the `sorted(by:)` method’s argument makes it clear that a `Bool` value must be returned by the closure. Because the closure’s body contains a single expression `(s1 > s2)` that returns a `Bool` value, there’s no ambiguity, and the `return` keyword can be omitted.
*/
//: [Shorthand Argument Names ->](Shorthand%20Argument%20Names)
