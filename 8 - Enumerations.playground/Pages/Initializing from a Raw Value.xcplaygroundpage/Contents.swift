/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Implicitly Assigned Raw Values](Implicitly%20Assigned%20Raw%20Values)
/*:
 ## Initializing from a Raw Value

 If you define an enumeration with a raw-value type, the enumeration automatically receives an initializer that takes a value of the raw value’s type (as a parameter called `rawValue`) and returns either an enumeration case or `nil`. You can use this initializer to try to create a new instance of the enumeration.

 This example identifies Uranus from its raw value of `7`:
*/
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let possiblePlanet = Planet(rawValue: 7)
// possiblePlanet is of type Planet? and equals Planet.uranus
/*:
 Not all possible `Int` values will find a matching planet, however. Because of this, the raw value initializer always returns an *optional enumeration* case. In the example above, `possiblePlanet` is of type `Planet?`, or “optional `Planet`.”
*/
/*:
 - Note: The raw value initializer is a failable initializer, because not every raw value will return an enumeration case. For more information, see [Failable Initializers](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/#Failable-Initializers)\.
*/
/*:
 If you try to find a planet with a position of `11`, the optional `Planet` value returned by the raw value initializer will be `nil`:
*/
let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}
// Prints "There isn't a planet at position 11"
/*:
 This example uses optional binding to try to access a planet with a raw value of `11`. The statement `if let somePlanet = Planet(rawValue: 11)` creates an optional `Planet`, and sets `somePlanet` to the value of that optional `Planet` if it can be retrieved. In this case, it isn’t possible to retrieve a planet with a position of `11`, and so the `else` branch is executed instead.
*/
//: [Recursive Enumerations ->](Recursive%20Enumerations)
