/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Methods](Methods)
/*:
 ## Instance Methods

 *Instance methods* are functions that belong to instances of a particular class, structure, or enumeration. They support the functionality of those instances, either by providing ways to access and modify instance properties, or by providing functionality related to the instance’s purpose. Instance methods have exactly the same syntax as functions, as described in [Functions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions/)\.

 You write an instance method within the opening and closing braces of the type it belongs to. An instance method has implicit access to all other instance methods and properties of that type. An instance method can be called only on a specific instance of the type it belongs to. It can’t be called in isolation without an existing instance.

 Here’s an example that defines a simple Counter class, which can be used to count the number of times an action occurs:
*/
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
/*:
 The Counter class defines three instance methods:

 * `increment()` increments the counter by `1`.

 * `increment(by: Int)` increments the counter by a specified integer amount.

 * `reset()` resets the counter to zero.

 The `Counter` class also declares a variable property, `count`, to keep track of the current counter value.

 You call instance methods with the same dot syntax as properties:
*/
let counter = Counter()
// the initial counter value is 0
counter.increment()
// the counter's value is now 1
counter.increment(by: 5)
// the counter's value is now 6
counter.reset()
// the counter's value is now 0
/*:
 Function parameters can have both a name (for use within the function’s body) and an argument label (for use when calling the function), as described in [Function Argument Labels and Parameter Names](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions/#Function-Argument-Labels-and-Parameter-Names)\. The same is true for method parameters, because methods are just functions that are associated with a type.
*/
//: [The self Property ->](The%20self%20Property)
