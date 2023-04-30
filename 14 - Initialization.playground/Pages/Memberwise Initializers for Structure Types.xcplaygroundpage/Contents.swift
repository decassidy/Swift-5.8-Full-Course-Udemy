/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Default Initializers](Default%20Initializers)
/*:
 ## Memberwise Initializers for Structure Types
 
 Structure types automatically receive a *memberwise initializer* if they don’t define any of their own custom initializers. Unlike a default initializer, the structure receives a memberwise initializer even if it has stored properties that don’t have default values.

 The memberwise initializer is a shorthand way to initialize the member properties of new structure instances. Initial values for the properties of the new instance can be passed to the memberwise initializer by name.

 The example below defines a structure called `Size` with two properties called `width` and `height`. Both properties are inferred to be of type `Double` by assigning a default value of `0.0`.

 The Size structure automatically receives an `init(width:height:)` memberwise initializer, which you can use to initialize a new `Size` instance:
*/
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)
/*:
 When you call a memberwise initializer, you can omit values for any properties that have default values. In the example above, the `Size` structure has a default value for both its `height` and `width` properties. You can omit either property or both properties, and the initializer uses the default value for anything you omit. For example:
*/
let zeroByTwo = Size(height: 2.0)
print(zeroByTwo.width, zeroByTwo.height)
// Prints "0.0 2.0"

let zeroByZero = Size()
print(zeroByZero.width, zeroByZero.height)
// Prints "0.0 0.0"
//: [Initializer Delegation for Value Types](Initializer%20Delegation%20for%20Value%20Types)
