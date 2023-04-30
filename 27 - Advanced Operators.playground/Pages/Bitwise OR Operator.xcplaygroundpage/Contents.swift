/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Bitwise AND Operator](Bitwise%20AND%20Operator)
/*:
 ## Bitwise OR Operator
 
 The bitwise OR operator (`|`) compares the bits of two numbers. The operator returns a new number whose bits are set to `1` if the bits are equal to `1` in either input number:
*/
//: ![](operators3.png)
/*:
 In the example below, the values of `someBits` and `moreBits` have different bits set to `1`. The bitwise OR operator combines them to make the number `11111110`, which equals an unsigned decimal of `254`:
*/
 let someBits: UInt8 = 0b10110010
 let moreBits: UInt8 = 0b01011110
 let combinedbits = someBits | moreBits  // equals 11111110
//: [Bitwise XOR Operator](Bitwise%20XOR%20Operator)
