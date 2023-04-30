/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Functions With Multiple Parameters](Functions%20With%20Multiple%20Parameters)
/*:
 ## Functions Without Return Values

 Functions aren’t required to define a return type. Here’s a version of the `greet(person:)` function, which prints its own `String` value rather than returning it:
*/
func greet(person: String) {
    print("Hello, \(person)!")
}
greet(person: "Dave")
// Prints "Hello, Dave!"
/*:
 Because it doesn’t need to return a value, the function’s definition doesn’t include the return arrow `(->)` or a return type.
*/
/*:
 - Note: Strictly speaking, this version of the `greet(person:)` function does still return a value, even though no return value is defined. Functions without a defined return type return a special value of type `Void`. This is simply an empty tuple, which is written as `()`.
*/
//: The return value of a function can be ignored when it’s called:
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world")
// prints "hello, world" and returns a value of 12
printWithoutCounting(string: "hello, world")
// prints "hello, world" but doesn't return a value
/*:
 The first function, `printAndCount(string:)`, prints a string, and then returns its character count as an `Int`. The second function, `printWithoutCounting(string:)`, calls the first function, but ignores its return value. When the second function is called, the message is still printed by the first function, but the returned value isn’t used.
*/
/*:
 - Note: Return values can be ignored, but a function that says it will return a value must always do so. A function with a defined return type can’t allow control to fall out of the bottom of the function without returning a value, and attempting to do so will result in a compile-time error.
*/
//: [Functions with Multiple Return Values ->](Functions%20with%20Multiple%20Return%20Values)
