/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Bitwise OR Operator](Bitwise%20OR%20Operator)
/*:
 ## Bitwise XOR Operator
 
 The bitwise XOR operator, or “exclusive OR operator” (`^`), compares the bits of two numbers. The operator returns a new number whose bits are set to 1 where the input bits are different and are set to `0` where the input bits are the same:
*/
//: ![](operators4.png)
/*:
 In the example below, the values of `firstBits` and `otherBits` each have a bit set to `1` in a location that the other does not. The bitwise XOR operator sets both of these bits to `1` in its output value. All of the other bits in `firstBits` and `otherBits` match and are set to `0` in the output value:
*/
 let firstBits: UInt8 = 0b00010100
 let otherBits: UInt8 = 0b00000101
 let outputBits = firstBits ^ otherBits  // equals 00010001
//: [Bitwise Left and Right Shift Operators](Bitwise%20Left%20and%20Right%20Shift%20Operators)
