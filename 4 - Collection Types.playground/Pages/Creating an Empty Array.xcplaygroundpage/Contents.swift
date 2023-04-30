/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Array Type Shorthand Syntax](Array%20Type%20Shorthand%20Syntax)
/*:
 ## Creating an Empty Array

 You can create an empty array of a certain type using initializer syntax:
*/
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")
// Prints "someInts is of type [Int] with 0 items."
/*:
 Note that the type of the someInts variable is inferred to be `[Int]` from the type of the initializer.

 Alternatively, if the context already provides type information, such as a function argument or an already typed variable or constant, you can create an empty array with an empty array literal, which is written as `[]` (an empty pair of square brackets):
*/
someInts.append(3)
// someInts now contains 1 value of type Int
someInts = []
// someInts is now an empty array, but is still of type [Int]
//: [Creating an Array with a Default Value ->](Creating%20an%20Array%20with%20a%20Default%20Value)
