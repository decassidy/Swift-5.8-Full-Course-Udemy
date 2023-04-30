/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Bitwise Operators](Bitwise%20Operators)
/*:
 ## Bitwise NOT Operator
 The bitwise NOT operator (`~`) inverts all bits in a number:
*/
//: ![](operators.png)
/*:
 The bitwise NOT operator is a prefix operator, and appears immediately before the value it operates on, without any white space:
*/
 let initialBits: UInt8 = 0b00001111
 let invertedBits = ~initialBits  // equals 11110000
/*:
 `UInt8` integers have eight bits and can store any value between `0` and `255`. This example initializes a `UInt8` integer with the binary value `00001111`, which has its first four bits set to `0`, and its second four bits set to `1`. This is equivalent to a decimal value of `15`.

 The bitwise NOT operator is then used to create a new constant called `invertedBits`, which is equal to `initialBits`, but with all of the bits inverted. Zeros become ones, and ones become zeros. The value of `invertedBits` is `11110000`, which is equal to an unsigned decimal value of `240`.
*/
//: [Bitwise AND Operator](Bitwise%20AND%20Operator)
