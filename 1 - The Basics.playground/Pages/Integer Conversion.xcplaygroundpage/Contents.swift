/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Numeric Type Conversion](Numeric%20Type%20Conversion)
/*:
 ## Integer Conversion

 The range of numbers that can be stored in an integer constant or variable is different for each numeric type. An `Int8` constant or variable can store numbers between `-128` and `127`, whereas a `UInt8` constant or variable can store numbers between `0` and `255`. A number that won’t fit into a constant or variable of a sized integer type is reported as an error when your code is compiled:
*/
//let cannotBeNegative: UInt8 = -1
// UInt8 can't store negative numbers, and so this will report an error
//let tooBig: Int8 = Int8.max + 1
// Int8 can't store a number larger than its maximum value,
// and so this will also report an error
/*:
 Because each numeric type can store a different range of values, you must opt in to numeric type conversion on a case-by-case basis. This opt-in approach prevents hidden conversion errors and helps make type conversion intentions explicit in your code.

 To convert one specific number type to another, you initialize a new number of the desired type with the existing value. In the example below, the constant `twoThousand` is of type `UInt16`, whereas the constant one is of type `UInt8`. They can’t be added together directly, because they’re not of the same type. Instead, this example calls `UInt16(one)` to create a new `UInt16` initialized with the value of one, and uses this value in place of the original:
*/
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
/*:
 Because both sides of the addition are now of type `UInt16`, the addition is allowed. The output constant (`twoThousandAndOne`) is inferred to be of type `UInt16`, because it’s the sum of two `UInt16` values.

 SomeType(`ofInitialValue`) is the default way to call the initializer of a Swift type and pass in an initial value. Behind the scenes, `UInt16` has an initializer that accepts a `UInt8` value, and so this initializer is used to make a new `UInt16` from an existing `UInt8`. You can’t pass in any type here, however — it has to be a type for which `UInt16` provides an initializer. Extending existing types to provide initializers that accept new types (including your own type definitions) is covered in [Extensions](Extensions).
*/
//: [Integer and Floating-Point Conversion ->](Integer%20and%20Floating-Point%20Conversion)
