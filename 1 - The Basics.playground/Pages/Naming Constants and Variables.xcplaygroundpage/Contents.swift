/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Type Annotations](Type%20Annotations)
/*:
 ## Naming Constants and Variables
 
 Constant and variable names can contain almost any character, including Unicode characters:
 
 - Callout(Example:):
 `let π = 3.14159`\
 `let 🐶🐮 = "dogcow"`

 
 Constant and variable names can’t contain whitespace characters, mathematical symbols, arrows, private-use Unicode scalar values, or line- and box-drawing characters. Nor can they begin with a number, although numbers may be included elsewhere within the name.

 Once you’ve declared a constant or variable of a certain type, you can’t declare it again with the same name, or change it to store values of a different type. Nor can you change a constant into a variable or a variable into a constant.
*/
/*:
 - Note: If you need to give a constant or variable the same name as a reserved Swift keyword, surround the keyword with backticks (```) when using it as a name. However, *avoid using keywords as names* unless you have absolutely no choice.
*/
/*:
 - Callout(Example:):
 `var friendlyWelcome = "Hello!"`\
`friendlyWelcome = "Bonjour!"`
*/
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
/*:
 Unlike a variable, the value of a constant can’t be changed after it’s set. Attempting to do so is reported as an error when your code is compiled:
 
 - Callout(Example:):
 `let languageName = "Swift"`\
`languageName = "Swift++"`\
`// This is a compile-time error: languageName cannot be changed.`
*/
let languageName = "Swift"
//languageName = "Swift++"
//: [Printing Constants and Variables ->](Printing%20Constants%20and%20Variables)
