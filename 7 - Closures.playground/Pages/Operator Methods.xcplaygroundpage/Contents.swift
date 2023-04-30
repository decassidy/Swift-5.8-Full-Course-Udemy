/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Shorthand Argument Names](Shorthand%20Argument%20Names)
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
/*:
 ## Operator Methods

 There’s actually an even *shorter* way to write the closure expression from the previous lesson. Swift’s `String` type defines its string-specific implementation of the greater-than operator `(>)` as a method that has two parameters of type `String`, and returns a value of type `Bool`. This exactly matches the method type needed by the `sorted(by:)` method. Therefore, you can simply pass in the greater-than operator, and Swift will infer that you want to use its string-specific implementation:
*/
var reversedNames = names.sorted(by: >)
/*:
 For more about operator methods, see [Operator Methods](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators/#Operator-Methods)\.
*/
//: [Trailing Closures ->](Trailing%20Closures)
