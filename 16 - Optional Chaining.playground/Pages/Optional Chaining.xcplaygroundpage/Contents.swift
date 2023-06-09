/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
/*:
 # Optional Chaining
 
 Access members of an optional value without unwrapping.
 
 *Optional chaining* is a process for querying and calling properties, methods, and subscripts on an optional that might currently be `nil`. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is `nil`, the property, method, or subscript call returns `nil`. Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is `nil`.
*/
/*:
 - Note:Optional chaining in Swift is similar to messaging `nil` in Objective-C, but in a way that works for any type, and that can be checked for success or failure.
*/
//: [Optional Chaining as an Alternative to Forced Unwrapping](Optional%20Chaining%20as%20an%20Alternative%20to%20Forced%20Unwrapping)
