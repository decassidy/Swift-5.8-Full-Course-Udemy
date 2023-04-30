/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Dictionary Type Shorthand Syntax](Dictionary%20Type%20Shorthand%20Syntax)
/*:
 ## Creating an Empty Dictionary

 As with arrays, you can create an empty Dictionary of a certain type by using initializer syntax:
*/
var namesOfIntegers: [Int: String] = [:]
// namesOfIntegers is an empty [Int: String] dictionary
/*:
 This example creates an empty dictionary of type `[Int: String]` to store human-readable names of integer values. Its keys are of type `Int`, and its values are of type `String`.

 If the context already provides type information, you can create an empty dictionary with an empty dictionary literal, which is written as `[:]` (a colon inside a pair of square brackets):
*/
namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]
//: [Creating a Dictionary with a Dictionary Literal ->](Creating%20a%20Dictionary%20with%20a%20Dictionary%20Literal)
