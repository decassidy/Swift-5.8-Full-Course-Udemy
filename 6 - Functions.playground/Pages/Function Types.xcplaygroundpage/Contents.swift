/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- In-Out Parameters](In-Out%20Parameters)
/*:
 ## Function Types

 Every function has a specific *function type*, made up of the parameter types and the return type of the function.

 For example:
*/
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
/*:
 This example defines two simple mathematical functions called `addTwoInts` and `multiplyTwoInts`. These functions each take two `Int` values, and return an `Int` value, which is the result of performing an appropriate mathematical operation.

 The type of both of these functions is `(Int, Int) -> Int`. This can be read as:

 “A function that has two parameters, both of type `Int`, and that returns a value of type `Int`.”

 Here’s another example, for a function with no parameters or return value:
*/
func printHelloWorld() {
    print("hello, world")
}
/*:
 The type of this function is `() -> Void`, or “a function that has no parameters, and returns `Void`.”
*/
//: [Using Function Types ->](Using%20Function%20Types)
