/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Creating an Empty Array](Creating%20an%20Empty%20Array)
/*:
 ## Creating an Array with a Default Value

 Swift’s `Array` type also provides an initializer for creating an array of a certain size with all of its values set to the same default value. You pass this initializer a default value of the appropriate type (called `repeating`): and the number of times that value is repeated in the new array (called `count`):
*/
var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
//: [Creating an Array by Adding Two Arrays Together ->](Creating%20an%20Array%20by%20Adding%20Two%20Arrays%20Together)
