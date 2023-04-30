/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Representing and Throwing Errors](Representing%20and%20Throwing%20Errors)
/*:
 ## Handling Errors
 
 When an error is thrown, some surrounding piece of code must be responsible for handling the error — for example, by correcting the problem, trying an alternative approach, or informing the user of the failure.

 There are four ways to handle errors in Swift. You can propagate the error from a function to the code that calls that function, handle the error using a `do-catch` statement, handle the error as an optional value, or assert that the error will not occur. Each approach is described in a section below.

 When a function throws an error, it changes the flow of your program, so it’s important that you can quickly identify places in your code that can throw errors. To identify these places in your code, write the `try` keyword — or the `try?` or `try!` variation — before a piece of code that calls a function, method, or initializer that can throw an error. These keywords are described in the sections below.
*/
/*:
 - Note:Error handling in Swift resembles exception handling in other languages, with the use of the `try`, `catch` and `throw` keywords. Unlike exception handling in many languages — including Objective-C — error handling in Swift doesn’t involve unwinding the call stack, a process that can be computationally expensive. As such, the performance characteristics of a `throw` statement are comparable to those of a `return` statement.
*/
//: [Propagating Errors Using Throwing Functions](Propagating%20Errors%20Using%20Throwing%20Functions)
