/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Projecting a Value From a Property Wrapper](Projecting%20a%20Value%20From%20a%20Property%20Wrapper)
@propertyWrapper
struct SmallNumber {
    private var maximum: Int
    private var number: Int


    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, maximum) }
    }


    init() {
        maximum = 12
        number = 0
    }
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}
/*:
 ## Global and Local Variables

 The capabilities described above for computing and observing properties are also available to global variables and local variables. Global variables are variables that are defined outside of any function, method, closure, or type context. Local variables are variables that are defined within a function, method, or closure context.

 The global and local variables you have encountered in previous chapters have all been stored variables. Stored variables, like stored properties, provide storage for a value of a certain type and allow that value to be set and retrieved.

 However, you can also define *computed variables* and define observers for stored variables, in either a global or local scope. Computed variables calculate their value, rather than storing it, and they’re written in the same way as computed properties.
*/
/*:
 - Note: Global constants and variables are always computed lazily, in a similar manner to [Lazy Stored Properties](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties/#Lazy-Stored-Properties)\. Unlike lazy stored properties, global constants and variables don’t need to be marked with the lazy modifier.

 Local constants and variables are never computed lazily.
*/
/*:
 You can apply a property wrapper to a local stored variable, but not to a global variable or a computed variable. For example, in the code below, myNumber uses `SmallNumber` as a property wrapper.
*/
func someFunction() {
    @SmallNumber var myNumber: Int = 0


    myNumber = 10
    // now myNumber is 10


    myNumber = 24
    // now myNumber is 12
}
/*:
 Like when you apply `SmallNumber` to a property, setting the value of `myNumber` to `10` is valid. Because the property wrapper doesn’t allow values higher than `12`, it sets `myNumber` to `12` instead of `24`.
*/
//: [Type Properties ->](Type%20Properties)
