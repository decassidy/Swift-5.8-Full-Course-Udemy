/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Setting Initial Values for Wrapped Properties](Setting%20Initial%20Values%20for%20Wrapped%20Properties)
/*:
 ## Projecting a Value From a Property Wrapper

 In addition to the wrapped value, a property wrapper can expose additional functionality by defining a projected value — for example, a property wrapper that manages access to a database can expose a `flushDatabaseConnection()` method on its projected value. The name of the projected value is the same as the wrapped value, except it begins with a dollar sign `($)`. Because your code can’t define properties that start with `$` the projected value never interferes with properties you define.

 In the `SmallNumber` example above, if you try to set the property to a number that’s too large, the property wrapper adjusts the number before storing it. The code below adds a projectedValue property to the SmallNumber structure to keep track of whether the property wrapper adjusted the new value for the property before storing that new value.
*/
@propertyWrapper
struct SmallNumber {
    private var number: Int
    private(set) var projectedValue: Bool


    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }


    init() {
        self.number = 0
        self.projectedValue = false
    }
}

struct SomeStructure {
    @SmallNumber var someNumber: Int
}
var someStructure = SomeStructure()


someStructure.someNumber = 4
print(someStructure.$someNumber)
// Prints "false"


someStructure.someNumber = 55
print(someStructure.$someNumber)
// Prints "true"
/*:
 Writing `someStructure.$someNumber` accesses the wrapper’s projected value. After storing a small number like four, the value of `someStructure.$someNumber` is `false`. However, the projected value is true after trying to store a number that’s too large, like `55`.

 A property wrapper can return a value of any type as its projected value. In this example, the property wrapper exposes only one piece of information — whether the number was adjusted — so it exposes that Boolean value as its projected value. A wrapper that needs to expose more information can return an instance of some other type, or it can return `self` to expose the instance of the wrapper as its projected value.

 When you access a projected value from code that’s part of the type, like a property getter or an instance method, you can omit `self.` before the property name, just like accessing other properties. The code in the following example refers to the projected value of the wrapper around `height` and `width` as `$height` and `$width`:
*/
enum Size {
    case small, large
}


struct SizedRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int


    mutating func resize(to size: Size) -> Bool {
        switch size {
        case .small:
            height = 10
            width = 20
        case .large:
            height = 100
            width = 100
        }
        return $height || $width
    }
}
/*:
 Because property wrapper syntax is just syntactic sugar for a property with a getter and a setter, accessing `height` and `width` behaves the same as accessing any other property. For example, the code in `resize(to:)` accesses `height` and `width` using their property wrapper. If you call `resize(to: .large)`, the switch case for `.large` sets the rectangle’s `height` and `width` to `100`. The wrapper prevents the value of those properties from being larger than `12`, and it sets the projected value to `true`, to record the fact that it adjusted their values. At the end of `resize(to:)`, the return statement checks `$height` and `$width` to determine whether the property wrapper adjusted either `height` or `width`.
*/
//: [Global and Local Variables ->](Global%20and%20Local%20Variables)
