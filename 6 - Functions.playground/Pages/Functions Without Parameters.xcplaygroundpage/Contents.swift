/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Function Parameters and Return Values](Function%20Parameters%20and%20Return%20Values)
/*:
 ## Functions Without Parameters

 Functions aren’t required to define input parameters. Here’s a function with no input parameters, which always returns the same `String` message whenever it’s called:
*/
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())
// Prints "hello, world"
/*:
 The function definition still needs parentheses after the function’s name, even though it doesn’t take any parameters. The function name is also followed by an empty pair of parentheses when the function is called.
*/
//: [Functions With Multiple Parameters ->](Functions%20With%20Multiple%20Parameters)
