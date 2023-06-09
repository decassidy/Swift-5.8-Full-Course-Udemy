/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Overflow Operators](Overflow%20Operators)
/*:
 ## Value Overflow
 
 Numbers can overflow in both the positive and negative direction.

 Here’s an example of what happens when an unsigned integer is allowed to overflow in the positive direction, using the overflow addition operator (`&+`):
*/
 var unsignedOverflow = UInt8.max
 // unsignedOverflow equals 255, which is the maximum value a UInt8 can hold
 unsignedOverflow = unsignedOverflow &+ 1
 // unsignedOverflow is now equal to 0
/*:
 The variable `unsignedOverflow` is initialized with the maximum value a `UInt8` can hold (`255`, or `11111111` in binary). It’s then incremented by `1` using the overflow addition operator (`&+`). This pushes its binary representation just over the size that a `UInt8` can hold, causing it to overflow beyond its bounds, as shown in the diagram below. The value that remains within the bounds of the `UInt8` after the overflow addition is `00000000`, or zero.
*/
//: ![](operators11.png)
/*:
 Something similar happens when an unsigned integer is allowed to overflow in the negative direction. Here’s an example using the overflow subtraction operator (`&-`):
*/
// var unsignedOverflow = UInt8.min
 // unsignedOverflow equals 0, which is the minimum value a UInt8 can hold
 unsignedOverflow = unsignedOverflow &- 1
 // unsignedOverflow is now equal to 255
/*:
 The minimum value that a `UInt8` can hold is zero, or `00000000` in binary. If you subtract `1` from `00000000` using the overflow subtraction operator (`&-`), the number will overflow and wrap around to `11111111`, or `255` in decimal.
*/
//: ![](operators12.png)
/*:
 Overflow also occurs for signed integers. All addition and subtraction for signed integers is performed in bitwise fashion, with the sign bit included as part of the numbers being added or subtracted, as described in [Bitwise Left and Right Shift Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators/#Bitwise-Left-and-Right-Shift-Operators)\.
*/
 var signedOverflow = Int8.min
 // signedOverflow equals -128, which is the minimum value an Int8 can hold
 signedOverflow = signedOverflow &- 1
 // signedOverflow is now equal to 127
/*:
 The minimum value that an `Int8` can hold is `-128`, or `10000000` in binary. Subtracting `1` from this binary number with the overflow operator gives a binary value of `01111111`, which toggles the sign bit and gives positive `127`, the maximum positive value that an `Int8` can hold.
*/
//: ![](operators13.png)
/*:
 For both signed and unsigned integers, overflow in the positive direction wraps around from the maximum valid integer value back to the minimum, and overflow in the negative direction wraps around from the minimum value to the maximum.
*/
//: [Precedence and Associativity](Precedence%20and%20Associativity)
