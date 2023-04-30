/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Extended String Delimiters](Extended%20String%20Delimiters)
/*:
 ## Initializing an Empty String

 To create an empty `String` value as the starting point for building a longer string, either assign an empty string literal to a variable or initialize a new `String` instance with initializer syntax:
*/
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other
/*:
 Find out whether a `String` value is empty by checking its Boolean `isEmpty` property:
*/
if emptyString.isEmpty {
    print("Nothing to see here")
}
// Prints "Nothing to see here"
//: [String Mutability ->](String%20Mutability)
