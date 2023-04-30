/*:
 ### Swift 5.7 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Creating an Array with a Default Value](Creating%20an%20Array%20with%20a%20Default%20Value)
var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
/*:
 ## Creating an Array by Adding Two Arrays Together

 You can create a new array by adding together two existing arrays with compatible types with the addition operator `(+)`. The new array’s type is inferred from the type of the two arrays you add together:
*/
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]


var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
//: [Creating an Array with an Array Literal ->](Creating%20an%20Array%20with%20an%20Array%20Literal)
