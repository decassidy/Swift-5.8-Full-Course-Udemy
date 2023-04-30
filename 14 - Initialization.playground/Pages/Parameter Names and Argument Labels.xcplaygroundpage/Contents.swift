/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Initialization Parameters](Initialization%20Parameters)
/*:
 ## Parameter Names and Argument Labels
 
 As with function and method parameters, initialization parameters can have both a parameter name for use within the initializer’s body and an argument label for use when calling the initializer.

 However, initializers don’t have an identifying function name before their parentheses in the way that functions and methods do. Therefore, the names and types of an initializer’s parameters play a particularly important role in identifying which initializer should be called. Because of this, Swift provides an automatic argument label for every parameter in an initializer if you don’t provide one.

 The following example defines a structure called `Color`, with three constant properties called `red, green, and blue`. These properties store a value between `0.0` and `1.0` to indicate the amount of `red, green, and blue` in the color.

 `Color` provides an initializer with three appropriately named parameters of type `Double` for its `red, green, and blue` components. `Color` also provides a second initializer with a single `white` parameter, which is used to provide the same value for all three color components.
*/
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}
/*:
 Both initializers can be used to create a new Color instance, by providing named values for each initializer parameter:
*/
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
/*:
 Note that it isn’t possible to call these initializers without using argument labels. Argument labels must always be used in an initializer if they’re defined, and omitting them is a compile-time error:
*/
let veryGreen = Color(0.0, 1.0, 0.0)
// this reports a compile-time error - argument labels are required
//: [Initializer Parameters Without Argument Labels](Initializer%20Parameters%20Without%20Argument%20Labels)
