/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Functions with Multiple Return Values](Functions%20with%20Multiple%20Return%20Values)
/*:
 ## Functions With an Implicit Return

 If the entire body of the function is a single expression, the function implicitly returns that expression. For example, both functions below have the same behavior:
*/
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "Dave"))
// Prints "Hello, Dave!"


func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))
// Prints "Hello, Dave!"
/*:
 The entire definition of the `greeting(for:)` function is the greeting message that it returns, which means it can use this shorter form. The `anotherGreeting(for:)` function returns the same greeting message, using the `return` keyword like a longer function. Any function that you write as just one `return` line can omit the `return`.

 As you’ll see in [Shorthand Getter Declaration](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties/#Shorthand-Getter-Declaration)\, property getters can also use an implicit return.
*/
/*:
 - Note: The code you write as an implicit return value needs to return some value. For example, you can’t use `print(13)` as an implicit return value. However, you can use a function that never returns like `fatalError("Oh no!")` as an implicit return value, because Swift knows that the implicit return doesn’t happen.
*/
//: [Function Argument Labels and Parameter Names ->](Function%20Argument%20Labels%20and%20Parameter%20Names)
