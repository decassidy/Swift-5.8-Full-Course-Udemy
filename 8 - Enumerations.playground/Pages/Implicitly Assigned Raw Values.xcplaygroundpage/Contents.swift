/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Raw Values](Raw%20Values)
/*:
 ## Implicitly Assigned Raw Values

 When you’re working with enumerations that store integer or string raw values, you don’t have to explicitly assign a raw value for each case. When you don’t, Swift automatically assigns the values for you.

 For example, when integers are used for raw values, the implicit value for each case is one more than the previous case. If the first case doesn’t have a value set, its value is `0`.

 The enumeration below is a refinement of the earlier Planet enumeration, with integer raw values to represent each planet’s order from the sun:
*/
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
/*:
 In the example above, `Planet.mercury` has an explicit raw value of `1`, `Planet.venus` has an implicit raw value of `2`, and so on.

 When strings are used for raw values, the implicit value for each case is the text of that case’s name.

 The enumeration below is a refinement of the earlier `CompassPoint` enumeration, with string raw values to represent each direction’s name:
*/
enum CompassPoint: String {
    case north, south, east, west
}
/*:
 In the example above, `CompassPoint.south` has an implicit raw value of "south", and so on.

 You access the raw value of an enumeration case with its `rawValue` property:
*/
let earthsOrder = Planet.earth.rawValue
// earthsOrder is 3


let sunsetDirection = CompassPoint.west.rawValue
// sunsetDirection is "west"
//: [Initializing from a Raw Value ->](Initializing%20from%20a%20Raw%20Value)
