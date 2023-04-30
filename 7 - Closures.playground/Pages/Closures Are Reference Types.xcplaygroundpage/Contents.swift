/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Capturing Values](Capturing%20Values)
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
/*:
 ## Closures Are Reference Types

 In the example above, `incrementBySeven` and `incrementByTen` are constants, but the closures these constants refer to are still able to increment the `runningTotal` variables that they have captured. This is because functions and closures are reference types.

 Whenever you assign a function or a closure to a constant or a variable, you are actually setting that constant or variable to be a reference to the function or closure. In the example above, it’s the choice of closure that `incrementByTen` refers to that’s constant, and not the contents of the closure itself.

 This also means that if you assign a closure to two different constants or variables, both of those constants or variables refer to the same closure.
*/
let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
// returns a value of 10


incrementByTen()
// returns a value of 20
/*:
 The example above shows that calling `alsoIncrementByTen` is the same as calling `incrementByTen`. Because both of them refer to the same closure, they both increment and return the same running total.
*/
//: [Escaping Closures ->](Escaping%20Closures)
