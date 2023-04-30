/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- The self Property](The%20self%20Property)
/*:
 ## Modifying Value Types from Within Instance Methods

 Structures and enumerations are *value types*. By default, the properties of a value type can’t be modified from within its instance methods.

 However, if you need to modify the properties of your structure or enumeration within a particular method, you can opt in to *mutating* behavior for that method. The method can then mutate (that is, change) its properties from within the method, and any changes that it makes are written back to the original structure when the method ends. The method can also assign a completely new instance to its implicit `self` property, and this new instance will replace the existing one when the method ends.

 You can opt in to this behavior by placing the `mutating` keyword before the func keyword for that method:
*/
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
// Prints "The point is now at (3.0, 4.0)"
/*:
 The `Point` structure above defines a mutating `moveBy(x:y:)` method, which moves a `Point` instance by a certain amount. Instead of returning a new point, this method actually modifies the point on which it’s called. The `mutating` keyword is added to its definition to enable it to modify its properties.

 Note that you can’t call a mutating method on a constant of structure type, because its properties can’t be changed, even if they’re variable properties, as described in [Stored Properties of Constant Structure Instances](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties/#Stored-Properties-of-Constant-Structure-Instances)\:
*/
//let fixedPoint = Point(x: 3.0, y: 3.0)
//fixedPoint.moveBy(x: 2.0, y: 3.0)
// this will report an error
//: [Assigning to self Within a Mutating Method ->](Assigning%20to%20self%20Within%20a%20Mutating%20Method)
