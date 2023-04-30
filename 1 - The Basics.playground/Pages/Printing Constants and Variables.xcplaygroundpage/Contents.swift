/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Naming Constants and Variables](Naming%20Constants%20and%20Variables)
/*:
 ## Printing Constants and Variables
 
 You can print the current value of a constant or variable with the `print(_:separator:terminator:)` function:
 
 - Callout(Example:):
 `print(friendlyWelcome)`\
`// Prints "Bonjour!"`
 
*/
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome is now "Bonjour!"

print(friendlyWelcome)
/*:
 
 The `print(_:separator:terminator:)` function is a global function that prints one or more values to an appropriate output. In Xcode, for example, the `print(_:separator:terminator:)` function prints its output in Xcode’s “console” pane. The separator and terminator parameter have default values, so you can omit them when you call this function. By default, the function terminates the line it prints by adding a line break. To print a value without a line break after it, pass an empty string as the terminator — for example, `print(someValue, terminator: "")`. For information about parameters with default values, see [Default Parameter Values](Default%20Parameter%20Values).

 Swift uses string interpolation to include the name of a constant or variable as a placeholder in a longer string, and to prompt Swift to replace it with the current value of that constant or variable. Wrap the name in parentheses and escape it with a backslash before the opening parenthesis:
 
 - Callout(Example:):
 `print("The current value of friendlyWelcome is \(friendlyWelcome)")`\
`// Prints "The current value of friendlyWelcome is Bonjour!"`
*/
print("The current value of friendlyWelcome is \(friendlyWelcome)")
/*:
 - Note: All options you can use with string interpolation are described in [String Interpolation](String%20Interpolation).
*/
//: [Comments ->](Comments)
