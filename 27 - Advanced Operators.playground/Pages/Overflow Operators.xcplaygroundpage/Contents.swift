/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Bitwise Left and Right Shift Operators](Bitwise%20Left%20and%20Right%20Shift%20Operators)
/*:
 ## Overflow Operators
 
 If you try to insert a number into an integer constant or variable that can’t hold that value, by default Swift reports an error rather than allowing an invalid value to be created. This behavior gives extra safety when you work with numbers that are too large or too small.

 For example, the `Int16` integer type can hold any signed integer between `-32768` and `32767`. Trying to set an `Int16` constant or variable to a number outside of this range causes an error:
*/
 var potentialOverflow = Int16.max
 // potentialOverflow equals 32767, which is the maximum value an Int16 can hold
 potentialOverflow += 1
 // this causes an error
/*:
 Providing error handling when values get too large or too small gives you much more flexibility when coding for boundary value conditions.

 However, when you specifically want an overflow condition to truncate the number of available bits, you can opt in to this behavior rather than triggering an error. Swift provides three *arithmetic overflow operators* that opt in to the overflow behavior for integer calculations. These operators all begin with an ampersand (`&`):

 - Overflow addition (`&+`)

 - Overflow subtraction (`&-`)

 - Overflow multiplication (`&*`)
*/
//: [Value Overflow](Value%20Overflow)
