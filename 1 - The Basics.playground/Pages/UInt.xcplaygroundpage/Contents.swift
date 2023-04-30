/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Int](Int)
/*:
 ## UInt
 
 Swift also provides an unsigned integer type, UInt, which has the same size as the current platform’s native word size:
 * On a 32-bit platform, UInt is the same size as `UInt32`.
 * On a 64-bit platform, UInt is the same size as `UInt64`.\
 
*/
/*:
 - Note: Use UInt only when you specifically need an unsigned integer type with the same size as the platform’s native word size. If this isn’t the case, Int is preferred, even when the values to be stored are known to be nonnegative. A consistent use of Int for integer values aids code interoperability, avoids the need to convert between different number types, and matches integer type inference, as described in [Type Safety and Type Inference](Type%20Safety%20and%20Type%20Inference).
*/
//let integerUint32Min = UInt32.min
//let integerUint32Max = UInt32.max

let integerUint64Min = UInt64.min
let integerUint64Max = UInt64.max
//: [Floating-Point Numbers ->](Floating-Point%20Numbers)
