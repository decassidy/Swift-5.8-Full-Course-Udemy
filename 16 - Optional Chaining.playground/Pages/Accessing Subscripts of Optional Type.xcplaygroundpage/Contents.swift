/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Accessing Subscripts Through Optional Chaining](Accessing%20Subscripts%20Through%20Optional%20Chaining)
/*:
 ## Accessing Subscripts of Optional Type
 
 If a subscript returns a value of optional type — such as the key subscript of Swift’s `Dictionary` type — place a question mark *after* the subscript’s closing bracket to chain on its optional return value:
*/
 var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
 testScores["Dave"]?[0] = 91
 testScores["Bev"]?[0] += 1
 testScores["Brian"]?[0] = 72
 // the "Dave" array is now [91, 82, 84] and the "Bev" array is now [80, 94, 81]
/*:
 The example above defines a dictionary called `testScores`, which contains two key-value pairs that map a `String` key to an array of `Int` values. The example uses optional chaining to set the first item in the `"Dave"` array to `91`; to increment the first item in the `"Bev"` array by `1`; and to try to set the first item in an array for a key of `"Brian"`. The first two calls succeed, because the `testScores` dictionary contains keys for `"Dave"` and `"Bev"`. The third call fails, because the `testScores` dictionary doesn’t contain a key for `"Brian"`.
*/
//: [Linking Multiple Levels of Chaining](Linking%20Multiple%20Levels%20of%20Chaining)
