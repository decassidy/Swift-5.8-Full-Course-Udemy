/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Bitwise NOT Operator](Bitwise%20NOT%20Operator)
/*:
 ## Bitwise AND Operator
 
 The bitwise AND operator (`&`) combines the bits of two numbers. It returns a new number whose bits are set to `1` only if the bits were equal to `1` in both input numbers:
*/
//: ![](operators2.png)
/*:
 In the example below, the values of `firstSixBits` and `lastSixBits` both have four middle bits equal to `1`. The bitwise AND operator combines them to make the number `00111100`, which is equal to an unsigned decimal value of `60`:
*/
 let firstSixBits: UInt8 = 0b11111100
 let lastSixBits: UInt8  = 0b00111111
 let middleFourBits = firstSixBits & lastSixBits  // equals 00111100
//: [Bitwise OR Operator](Bitwise%20OR%20Operator)
