/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//:[<- Integer Bounds](Integer%20Bounds)
/*:
 ## Int
 
 In most cases, you don’t need to pick a specific size of integer to use in your code. Swift provides an additional integer type, Int, which has the same size as the current platform’s native word size:

 * On a 32-bit platform, Int is the same size as `Int32`.
 * On a 64-bit platform, Int is the same size as `Int64`.
*/
/*:
 Unless you need to work with a specific size of integer, always use Int for integer values in your code. This aids code consistency and interoperability. Even on 32-bit platforms, Int can store any value between `-2,147,483,648` and `2,147,483,647`, and is large enough for many integer ranges.
*/
let newIntMin = Int32.min
let newIntMax = Int32.max

let newInt64Min = Int64.min
let newInt64Max = Int64.max
//: [UInt ->](UInt)
