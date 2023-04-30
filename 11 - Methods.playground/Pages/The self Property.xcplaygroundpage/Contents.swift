/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Instance Methods](Instance%20Methods)
/*:
 ## The self Property

 Every instance of a type has an implicit property called `self`, which is exactly equivalent to the instance itself. You use the `self` property to refer to the current instance within its own instance methods.

 The `increment()` method in the example above could have been written like this:
*/
/*:
 - Example:
 ````
    func increment() {
        self.count += 1
    }
 ````
*/
/*:
 In practice, you don’t need to write `self` in your code very often. If you don’t explicitly write `self`, Swift assumes that you are referring to a property or method of the current instance whenever you use a known property or method name within a method. This assumption is demonstrated by the use of `count` (rather than `self.count`) inside the three instance methods for `Counter`.

 The main exception to this rule occurs when a parameter name for an instance method has the same name as a property of that instance. In this situation, the parameter name takes precedence, and it becomes necessary to refer to the property in a more qualified way. You use the `self` property to distinguish between the parameter name and the property name.

 Here, `self` disambiguates between a method parameter called `x` and an instance property that’s also called `x`:
*/
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0) {
    print("This point is to the right of the line where x == 1.0")
}
// Prints "This point is to the right of the line where x == 1.0"
/*:
 Without the `self` prefix, Swift would assume that both uses of `x` referred to the method parameter called `x`.
*/
//: [Modifying Value Types from Within Instance Methods ->](Modifying%20Value%20Types%20from%20Within%20Instance%20Methods)
