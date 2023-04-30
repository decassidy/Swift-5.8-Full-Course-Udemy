/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Set Type Syntax](Set%20Type%20Syntax)
/*:
 ## Creating and Initializing an Empty Set

 You can create an empty set of a certain type using initializer syntax:
*/
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
// Prints "letters is of type Set<Character> with 0 items."
/*:
 - Note: The type of the letters variable is inferred to be `Set<Character>`, from the type of the initializer.
*/
/*:
 Alternatively, if the context already provides type information, such as a function argument or an already typed variable or constant, you can create an empty set with an empty array literal:
*/
letters.insert("a")
// letters now contains 1 value of type Character
letters = []
// letters is now an empty set, but is still of type Set<Character>
//: [Creating a Set with an Array Literal ->](Creating%20a%20Set%20with%20an%20Array%20Literal)
