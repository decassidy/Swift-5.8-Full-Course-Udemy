/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Classes Are Reference Types](Classes%20Are%20Reference%20Types)
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let tenEighty = VideoMode()

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
/*:
 ## Identity Operators

 Because classes are reference types, it’s possible for multiple constants and variables to refer to the same single instance of a class behind the scenes. (The same isn’t true for structures and enumerations, because they’re always copied when they’re assigned to a constant or variable, or passed to a function.)

 It can sometimes be useful to find out whether two constants or variables refer to exactly the same instance of a class. To enable this, Swift provides two identity operators:

 * Identical to `(===)`

 * Not identical to `(!==)`

 Use these operators to check whether two constants or variables refer to the same single instance:
*/
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
// Prints "tenEighty and alsoTenEighty refer to the same VideoMode instance."
/*:
 Note that identical to (represented by three equals signs, or `===`) doesn’t mean the same thing as equal to (represented by two equals signs, or `==`). Identical to means that two constants or variables of class type refer to exactly the same class instance. Equal to means that two instances are considered equal or equivalent in value, for some appropriate meaning of equal, as defined by the type’s designer.

 When you define your own custom structures and classes, it’s your responsibility to decide what qualifies as two instances being equal. The process of defining your own implementations of the `==` and `!=` operators is described in [Equivalence Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators/#Equivalence-Operators)\.
*/
//: [Pointers ->](Pointers)
