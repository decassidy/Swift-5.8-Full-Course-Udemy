/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Optionals](Optionals)
/*:
 ## nil

 You set an optional variable to a valueless state by assigning it the special value `nil`:
*/
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
/*:
 - Note: You can’t use nil with non-optional constants and variables. If a constant or variable in your code needs to work with the absence of a value under certain conditions, always declare it as an optional value of the appropriate type.
*/
/*:
 If you define an optional variable without providing a default value, the variable is automatically set to `nil` for you:
*/
var surveyAnswer: String?
// surveyAnswer is automatically set to nil
/*:
 - Note: Swift’s `nil` isn’t the same as `nil` in Objective-C. In Objective-C, nil is a pointer to a nonexistent object. In Swift, `nil` isn’t a pointer — it’s the absence of a value of a certain type. Optionals of any type can be set to `nil`, not just object types.
*/
//: [If Statements and Forced Unwrapping ->](If%20Statements%20and%20Forced%20Unwrapping)

