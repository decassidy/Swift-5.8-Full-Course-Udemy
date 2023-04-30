/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Enumeration Syntax](Enumeration%20Syntax)
/*:
 ## Matching Enumeration Values with a Switch Statement

 You can match individual enumeration values with a switch statement:
*/
enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.east

directionToHead = .south

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
// Prints "Watch out for penguins"
/*:
 You can read this code as:

 “Consider the value of `directionToHead`. In the case where it equals `.north`, print `"Lots of planets have a north"`. In the case where it equals `.south`, print `"Watch out for penguins"`.”

 …and so on.

 As described in [Control Flow](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/)\, a `switch` statement must be exhaustive when considering an enumeration’s cases. If the case for `.west` is omitted, this code doesn’t compile, because it doesn’t consider the complete list of `CompassPoint` cases. Requiring exhaustiveness ensures that enumeration cases aren’t accidentally omitted.

 When it isn’t appropriate to provide a case for every enumeration case, you can provide a `default` case to cover any cases that aren’t addressed explicitly:
*/
let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}
// Prints "Mostly harmless"
//: [Iterating over Enumeration Cases ->](Iterating%20over%20Enumeration%20Cases)
