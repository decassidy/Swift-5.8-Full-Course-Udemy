/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Integers](Integers)
/*:
 ## Integer Bounds
 
 You can access the minimum and maximum values of each integer type with its `min` and `max` properties:
 
 - Callout(Example:): `let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8` \
`let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8`
*/
let minValue = UInt8.min
let maxValue = UInt8.max
/*:
 The values of these properties are of the appropriate-sized number type (such as `UInt8` in the example above) and can therefore be used in expressions alongside other values of the same type.
*/
//: [Int ->](Int)
