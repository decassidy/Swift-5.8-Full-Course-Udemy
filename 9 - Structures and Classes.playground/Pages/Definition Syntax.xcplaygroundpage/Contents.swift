/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Comparing Structures and Classes](Comparing%20Structures%20and%20Classes)
/*:
 ## Definition Syntax

 Structures and classes have a similar definition syntax. You introduce structures with the `struct` keyword and classes with the `class` keyword. Both place their entire definition within a pair of braces:
*/
struct SomeStructure {
    // structure definition goes here
}
class SomeClass {
    // class definition goes here
}
/*:
 - Note: Whenever you define a new structure or class, you define a new Swift type. Give types `UpperCamelCase` names (such as `SomeStructure` and `SomeClass` here) to match the capitalization of standard Swift types (such as `String`, `Int`, and `Bool`). Give properties and methods `lowerCamelCase` names (such as `frameRate` and `incrementCount`) to differentiate them from type names.
*/
/*:
 Here’s an example of a structure definition and a class definition:
*/
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
 The example above defines a new structure called `Resolution`, to describe a pixel-based display resolution. This structure has two stored properties called `width` and `height`. Stored properties are constants or variables that are bundled up and stored as part of the structure or class. These two properties are inferred to be of type `Int` by setting them to an initial integer value of `0`.

 The example above also defines a new class called `VideoMode`, to describe a specific video mode for video display. This class has four variable stored properties. The first, `resolution`, is initialized with a new `Resolution` structure instance, which infers a property type of `Resolution`. For the other three properties, new `VideoMode` instances will be initialized with an `interlaced` setting of `false` (meaning “noninterlaced video”), a playback frame rate of `0.0`, and an optional `String` value called name. The name property is automatically given a default value of `nil`, or “no name value”, because it’s of an optional type.
*/
//: [Structure and Class Instances ->](Structure%20and%20Class%20Instances)
