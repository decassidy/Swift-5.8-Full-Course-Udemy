/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Stored Properties and Instance Variables](Stored%20Properties%20and%20Instance%20Variables)
/*:
 ## Computed Properties

 In addition to stored properties, classes, structures, and enumerations can define *computed properties*, which don’t actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.
*/
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
// initialSquareCenter is at (5.0, 5.0)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"
/*:
 This example defines three structures for working with geometric shapes:

 * Point encapsulates the x- and y-coordinate of a point.

 * Size encapsulates a width and a height.

 * Rect defines a rectangle by an origin point and a size.

 The `Rect` structure also provides a computed property called `center`. The current center position of a `Rect` can always be determined from its `origin` and `size`, and so you don’t need to store the center point as an explicit `Point` value. Instead, `Rect` defines a custom getter and setter for a computed variable called `center`, to enable you to work with the rectangle’s center as if it were a real stored property.

 The example above creates a new `Rect` variable called `square`. The `square` variable is initialized with an origin point of `(0, 0)`, and a width and height of `10`. This square is represented by the light green square in the diagram below.

 The `square` variable’s center property is then accessed through dot syntax (`square.center`), which causes the getter for `center` to be called, to retrieve the current property value. Rather than returning an existing value, the getter actually calculates and returns a new `Point` to represent the center of the square. As can be seen above, the getter correctly returns a center point of (`5, 5`).

 The `center` property is then set to a new value of (`15, 15`), which moves the square up and to the right, to the new position shown by the dark green square in the diagram below. Setting the `center` property calls the setter for `center`, which modifies the `x` and `y` values of the stored origin property, and moves the square to its new position.
*/
//: ![](origin.png)
//: [Shorthand Setter Declaration ->](Shorthand%20Setter%20Declaration)
