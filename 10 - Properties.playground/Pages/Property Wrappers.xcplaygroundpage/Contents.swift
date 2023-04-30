/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Property Observers](Property%20Observers)
/*:
 ## Property Wrappers

 A property wrapper adds a layer of separation between code that manages how a property is stored and the code that defines a property. For example, if you have properties that provide thread-safety checks or store their underlying data in a database, you have to write that code on every property. When you use a property wrapper, you write the management code once when you define the wrapper, and then reuse that management code by applying it to multiple properties.

 To define a property wrapper, you make a structure, enumeration, or class that defines a `wrappedValue` property. In the code below, the `TwelveOrLess` structure ensures that the value it wraps always contains a number less than or equal to `12`. If you ask it to store a larger number, it stores `12` instead.
*/
@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}
/*:
 The setter ensures that new values are less than or equal to `12`, and the getter returns the stored value.
*/
/*:
 - Note: The declaration for number in the example above marks the variable as `private`, which ensures number is used only in the implementation of `TwelveOrLess`. Code that’s written anywhere else accesses the value using the getter and setter for wrappedValue, and can’t use number directly. For information about `private`, see [Access Control](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/)\.
*/
/*:
 You apply a wrapper to a property by writing the wrapper’s name before the property as an attribute. Here’s a structure that stores a rectangle that uses the `TwelveOrLess` property wrapper to ensure its dimensions are always `12` or less:
*/
struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}


var rectangle = SmallRectangle()
print(rectangle.height)
// Prints "0"


rectangle.height = 10
print(rectangle.height)
// Prints "10"


rectangle.height = 24
print(rectangle.height)
// Prints "12"
/*:
 The `height` and `width` properties get their initial values from the definition of `TwelveOrLess`, which sets `TwelveOrLess.number` to zero. The setter in `TwelveOrLess` treats `10` as a valid value so storing the number `10` in `rectangle.height` proceeds as written. However, `24` is larger than TwelveOrLess allows, so trying to store `24` end up setting rectangle.height to `12` instead, the largest allowed value.

 When you apply a wrapper to a property, the compiler synthesizes code that provides storage for the wrapper and code that provides access to the property through the wrapper. (The property wrapper is responsible for storing the wrapped value, so there’s no synthesized code for that.) You could write code that uses the behavior of a property wrapper, without taking advantage of the special attribute syntax. For example, here’s a version of `SmallRectangle` from the previous code listing that wraps its properties in the `TwelveOrLess` structure explicitly, instead of writing `@TwelveOrLess` as an attribute:
*/
//struct SmallRectangle {
//    private var _height = TwelveOrLess()
//    private var _width = TwelveOrLess()
//    var height: Int {
//        get { return _height.wrappedValue }
//        set { _height.wrappedValue = newValue }
//    }
//    var width: Int {
//        get { return _width.wrappedValue }
//        set { _width.wrappedValue = newValue }
//    }
//}
/*:
 The `_height` and `_width` properties store an instance of the property wrapper, `TwelveOrLess`. The getter and setter for `height` and `width` wrap access to the `wrappedValue` property.
*/
//: [Setting Initial Values for Wrapped Properties ->](Setting%20Initial%20Values%20for%20Wrapped%20Properties)
