/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Function Types](Function%20Types)
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

mathFunction = multiplyTwoInts

/*:
 ## Using Function Types

 You use function types just like any other types in Swift. For example, you can define a constant or variable to be of a function type and assign an appropriate function to that variable:
 
 ````
 var mathFunction: (Int, Int) -> Int = addTwoInts
 ````
*/
/*:
 This can be read as:

 “Define a variable called `mathFunction`, which has a type of ‘a function that takes two `Int` values, and returns an `Int` value.’ Set this new variable to refer to the function called `addTwoInts`.”

 The `addTwoInts(_:_:)` function has the same type as the `mathFunction` variable, and so this assignment is allowed by Swift’s type-checker.

 You can now call the assigned function with the name `mathFunction`:
*/
var mathFunction: (Int, Int) -> Int = addTwoInts

print("Result: \(mathFunction(2, 3))")
// Prints "Result: 5"
/*:
 A different function with the same matching type can be assigned to the same variable, in the same way as for nonfunction types:
*/
mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")
// Prints "Result: 6"
/*:
 As with any other type, you can leave it to Swift to infer the function type when you assign a function to a constant or variable:
*/
let anotherMathFunction = addTwoInts
// anotherMathFunction is inferred to be of type (Int, Int) -> Int
//: [Function Types as Parameter Types ->](Function%20Types%20as%20Parameter%20Types)
