/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Integer and Floating-Point Conversion](Integer%20and%20Floating-Point%20Conversion)
/*:
 ## Type Aliases

 Type *aliases* define an alternative name for an existing type. You define type aliases with the `typealias` keyword.

 Type aliases are useful when you want to refer to an existing type by a name that’s contextually more appropriate, such as when working with data of a specific size from an external source:
*/
typealias AudioSample = UInt16
/*:
 Once you define a type alias, you can use the alias anywhere you might use the original name:
*/
var maxAmplitudeFound = AudioSample.max
// maxAmplitudeFound is now 0
var minAmplitudeFound = AudioSample.min
/*:
 Here, `AudioSample` is defined as an alias for `UInt16`. Because it’s an alias, the call to `AudioSample.min` actually calls `UInt16.min`, which provides an initial value of `0` for the `maxAmplitudeFound` variable.
*/
//: [Booleans ->](Booleans)
