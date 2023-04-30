/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Stored Properties](Stored%20Properties)
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
/*:
 ## Stored Properties of Constant Structure Instances

 If you create an instance of a structure and assign that instance to a constant, you can’t modify the instance’s properties, even if they were declared as variable properties:
*/
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// this range represents integer values 0, 1, 2, and 3
//rangeOfFourItems.firstValue = 6
// this will report an error, even though firstValue is a variable property
/*:
 Because `rangeOfFourItems` is declared as a constant (with the `let` keyword), it isn’t possible to change its `firstValue` property, even though `firstValue` is a variable property.

 This behavior is due to structures being value types. When an instance of a value type is marked as a constant, so are all of its properties.

 The same isn’t true for classes, which are *reference types*. If you assign an instance of a reference type to a constant, you can still change that instance’s variable properties.
*/
//: [Lazy Stored Properties ->](Lazy%20Stored%20Properties)
