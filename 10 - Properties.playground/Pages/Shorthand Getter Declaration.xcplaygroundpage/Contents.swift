/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Shorthand Setter Declaration](Shorthand%20Setter%20Declaration)
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}
/*:
 ## Shorthand Getter Declaration

 If the entire body of a getter is a single expression, the getter implicitly returns that expression. Here’s an another version of the `Rect` structure that takes advantage of this shorthand notation and the shorthand notation for setters:
*/
struct CompactRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
/*:
 Omitting the return from a getter follows the same rules as omitting return from a function, as described in [Functions With an Implicit Return](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions/#Functions-With-an-Implicit-Return)\.
*/
//: [Read-Only Computed Properties ->](Read-Only%20Computed%20Properties)
