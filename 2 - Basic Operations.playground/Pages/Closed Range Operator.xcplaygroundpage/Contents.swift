/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Range Operators](Range%20Operators)
/*:
 ## Closed Range Operator

 The closed range operator `(a...b)` defines a range that runs from `a` to `b`, and includes the values `a` and `b`. The value of a must not be greater than `b`.

 The closed range operator is useful when iterating over a range in which you want all of the values to be used, such as with a `for-in` loop:
*/
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25
/*:
 For more about `for-in` loops, see [Control Flow](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/)
*/
//: [Half-Open Range Operator ->](Half-Open%20Range%20Operator)
