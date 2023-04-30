/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Initializing an Empty String](Initializing%20an%20Empty%20String)
/*:
 ## String Mutability

 You indicate whether a particular `String` can be modified (or mutated) by assigning it to a variable (in which case it can be modified), or to a constant (in which case it can’t be modified):
*/
var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"


let constantString = "Highlander"
//constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified
/*:
 - Note: This approach is different from string mutation in Objective-C and Cocoa, where you choose between two classes (`NSString` and `NSMutableString`) to indicate whether a string can be mutated.
*/
//: [Strings Are Value Types ->](Strings%20Are%20Value%20Types)
