/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- String Indices](String%20Indices)
/*:
 ## String Indices

 Each `String` value has an associated *index* type, `String.Index`, which corresponds to the position of each `Character` in the string.

 As mentioned above, different characters can require different amounts of memory to store, so in order to determine which `Character` is at a particular position, you must iterate over each Unicode scalar from the start or end of that `String`. For this reason, Swift strings can’t be indexed by integer values.

 Use the `startIndex` property to access the position of the first `Character` of a `String`. The `endIndex` property is the position after the last character in a `String`. As a result, the `endIndex` property isn’t a valid argument to a string’s subscript. If a `String` is empty, `startIndex` and `endIndex` are equal.

 You access the indices before and after a given index using the `index(before:)` and `index(after:)` methods of `String`. To access an index farther away from the given index, you can use the `index(_:offsetBy:)` method instead of calling one of these methods multiple times.

 You can use subscript syntax to access the `Character` at a particular `String` index.
*/
let greeting = "Hello Swift!"
greeting[greeting.startIndex]
// H
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// e
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// w
/*:
 Attempting to access an index outside of a string’s range or a `Character` at an index outside of a string’s range will trigger a runtime error.
*/
//greeting[greeting.endIndex] // Error
//greeting.index(after: greeting.endIndex) // Error
/*:
 Use the indices property to access all of the indices of individual characters in a string.
*/
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}
// Prints "H e l l o S w i f t ! "
/*:
 - Note: You can use the `startIndex` and `endIndex` properties and the `index(before:)`, `index(after:)`, and `index(_:offsetBy:)` methods on any type that conforms to the `Collection` protocol. This includes `String`, as shown here, as well as collection types such as `Array`, `Dictionary`, and `Set`.
*/
//: [Inserting and Removing ->](Inserting%20and%20Removing)
