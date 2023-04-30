/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Shorthand Getter Declaration](Shorthand%20Getter%20Declaration)
/*:
 ## Read-Only Computed Properties

 A computed property with a getter but no setter is known as a *read-only computed property*. A read-only computed property always returns a value, and can be accessed through dot syntax, but can’t be set to a different value.
*/
/*:
 - Note: You must declare computed properties — including read-only computed properties — as variable properties with the `var` keyword, because their value isn’t fixed. The `let` keyword is only used for constant properties, to indicate that their values can’t be changed once they’re set as part of instance initialization.
*/
/*:
 You can simplify the declaration of a read-only computed property by removing the `get` keyword and its braces:
*/
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// Prints "the volume of fourByFiveByTwo is 40.0"
/*:
 This example defines a new structure called `Cuboid`, which represents a 3D rectangular box with `width`, `height`, and `depth` properties. This structure also has a read-only computed property called `volume`, which calculates and returns the current volume of the cuboid. It doesn’t make sense for volume to be settable, because it would be ambiguous as to which values of `width`, `height`, and `depth` should be used for a particular `volume` value. Nonetheless, it’s useful for a `Cuboid` to provide a read-only computed property to enable external users to discover its current calculated volume.
*/
//: [Property Observers ->](Property%20Observers)
