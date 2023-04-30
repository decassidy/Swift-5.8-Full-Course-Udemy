/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Designated and Convenience Initializers in Action](Designated%20and%20Convenience%20Initializers%20in%20Action)
/*:
 ## Failable Initializers
 
 It’s sometimes useful to define a class, structure, or enumeration for which initialization can fail. This failure might be triggered by invalid initialization parameter values, the absence of a required external resource, or some other condition that prevents initialization from succeeding.

 To cope with initialization conditions that can fail, define one or more failable initializers as part of a class, structure, or enumeration definition. You write a failable initializer by placing a question mark after the `init` keyword (`init?`).
*/
/*:
 - Note:You can’t define a failable and a nonfailable initializer with the same parameter types and names.
*/
/*:
 A failable initializer creates an optional value of the type it initializes. You write return `nil` within a failable initializer to indicate a point at which initialization failure can be triggered.
*/
/*:
 - Note:Strictly speaking, initializers don’t return a value. Rather, their role is to ensure that `self` is fully and correctly initialized by the time that initialization ends. Although you write `return nil` to trigger an initialization failure, you don’t use the `return` keyword to indicate initialization success.
*/
/*:
 For instance, failable initializers are implemented for numeric type conversions. To ensure conversion between numeric types maintains the value exactly, use the `init(exactly:)` initializer. If the type conversion can’t maintain the value, the initializer fails.
*/
let wholeNumber: Double = 12345.0
let pi = 3.14159

if let valueMaintained = Int(exactly: wholeNumber) {
    print("\(wholeNumber) conversion to Int maintains value of \(valueMaintained)")
}
// Prints "12345.0 conversion to Int maintains value of 12345"

let valueChanged = Int(exactly: pi)
// valueChanged is of type Int?, not Int

if valueChanged == nil {
    print("\(pi) conversion to Int doesn't maintain value")
}
// Prints "3.14159 conversion to Int doesn't maintain value"
/*:
 The example below defines a structure called `Animal`, with a constant `String` property called species. The `Animal` structure also defines a failable initializer with a single parameter called `species`. This initializer checks if the species value passed to the initializer is an empty string. If an empty string is found, an initialization failure is triggered. Otherwise, the species property’s value is set, and initialization succeeds:
*/
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}
/*:
 You can use this failable initializer to try to initialize a new `Animal` instance and to check if initialization succeeded:
*/
let someCreature = Animal(species: "Giraffe")
// someCreature is of type Animal?, not Animal

if let giraffe = someCreature {
    print("An animal was initialized with a species of \(giraffe.species)")
}
// Prints "An animal was initialized with a species of Giraffe"
/*:
 If you pass an empty string value to the failable initializer’s `species` parameter, the initializer triggers an initialization failure:
*/
let anonymousCreature = Animal(species: "")
// anonymousCreature is of type Animal?, not Animal

if anonymousCreature == nil {
    print("The anonymous creature couldn't be initialized")
}
// Prints "The anonymous creature couldn't be initialized"
/*:
 - Note:Checking for an empty string value (such as `""` rather than `"Giraffe"`) isn’t the same as checking for `nil` to indicate the absence of an *optional* `String` value. In the example above, an empty string (`""`) is a valid, non-optional `String`. However, it’s not appropriate for an animal to have an empty string as the value of its `species` property. To model this restriction, the failable initializer triggers an initialization failure if an empty string is found.
*/
//: [Failable Initializers for Enumerations](Failable%20Initializers%20for%20Enumerations)
