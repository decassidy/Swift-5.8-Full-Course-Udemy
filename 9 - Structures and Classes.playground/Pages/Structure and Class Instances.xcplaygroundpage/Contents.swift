/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Definition Syntax](Definition%20Syntax)
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
/*:
 ## Structure and Class Instances

 The `Resolution` structure definition and the `VideoMode` class definition only describe what a `Resolution` or `VideoMode` will look like. They themselves don’t describe a specific resolution or video mode. To do that, you need to create an instance of the structure or class.

 The syntax for creating instances is very similar for both structures and classes:
*/
let someResolution = Resolution()
let someVideoMode = VideoMode()
/*:
 Structures and classes both use initializer syntax for new instances. The simplest form of initializer syntax uses the type name of the class or structure followed by empty parentheses, such as `Resolution()` or `VideoMode()`. This creates a new instance of the class or structure, with any properties initialized to their default values. Class and structure initialization is described in more detail in [Initialization](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization/)\.
*/
//: [Accessing Properties ->](Accessing%20Properties)
