/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Properties](Properties)
/*:
 ## Stored Properties

 In its simplest form, a stored property is a constant or variable that’s stored as part of an instance of a particular class or structure. Stored properties can be either variable stored properties (introduced by the var keyword) or constant stored properties (introduced by the `let` keyword).

 You can provide a default value for a stored property as part of its definition, as described in [Default Property Values](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization/#Default-Property-Values)\. You can also set and modify the initial value for a stored property during initialization. This is true even for constant stored properties, as described in [Assigning Constant Properties During Initialization](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization/#Assigning-Constant-Properties-During-Initialization)\.

 The example below defines a structure called FixedLengthRange, which describes a range of integers whose range length can’t be changed after it’s created:
*/
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// the range represents integer values 0, 1, and 2
rangeOfThreeItems.firstValue = 6
// the range now represents integer values 6, 7, and 8
/*:
 Instances of `FixedLengthRange` have a variable stored property called `firstValue` and a constant stored property called `length`. In the example above, `length` is initialized when the new range is created and can’t be changed thereafter, because it’s a constant property.
*/
//: [Stored Properties of Constant Structure Instances ->](Stored%20Properties%20of%20Constant%20Structure%20Instances)
