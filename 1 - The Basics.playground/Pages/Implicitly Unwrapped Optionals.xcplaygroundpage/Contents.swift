/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Optional Binding](Optional%20Binding)
/*:
 ## Implicitly Unwrapped Optionals

 As described above, optionals indicate that a constant or variable is allowed to have “no value”. Optionals can be checked with an `if` statement to see if a value exists, and can be conditionally unwrapped with optional binding to access the optional’s value if it does exist.

 Sometimes it’s clear from a program’s structure that an optional will always have a value, after that value is first set. In these cases, it’s useful to remove the need to check and unwrap the optional’s value every time it’s accessed, because it can be safely assumed to have a value all of the time.

 These kinds of optionals are defined as *implicitly unwrapped optionals*. You write an implicitly unwrapped optional by placing an exclamation point (`String!`) rather than a question mark (`String?`) after the type that you want to make optional. Rather than placing an exclamation point after the optional’s name when you use it, you place an exclamation point after the optional’s type when you declare it.

 Implicitly unwrapped optionals are useful when an optional’s value is confirmed to exist immediately after the optional is first defined and can definitely be assumed to exist at every point thereafter. The primary use of implicitly unwrapped optionals in Swift is during class initialization, as described in [Unowned References and Implicitly Unwrapped Optional Properties](Unowned%20References%20and%20Implicitly%20Unwrapped%20Optional%20Properties).

 An implicitly unwrapped optional is a normal optional behind the scenes, but can also be used like a non-optional value, without the need to unwrap the optional value each time it’s accessed. The following example shows the difference in behavior between an optional string and an implicitly unwrapped optional string when accessing their wrapped value as an explicit `String`:
*/
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point


let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point
/*:
 You can think of an implicitly unwrapped optional as giving permission for the optional to be force-unwrapped if needed. When you use an implicitly unwrapped optional value, Swift first tries to use it as an ordinary optional value; if it can’t be used as an optional, Swift force-unwraps the value. In the code above, the optional value `assumedString` is force-unwrapped before assigning its value to `implicitString` because `implicitString` has an explicit, non-optional type of `String`. In code below, `optionalString` doesn’t have an explicit type so it’s an ordinary optional.
*/
let optionalString = assumedString
// The type of optionalString is "String?" and assumedString isn't force-unwrapped.
/*:
 If an implicitly unwrapped optional is `nil` and you try to access its wrapped value, you’ll trigger a runtime error. The result is exactly the same as if you place an exclamation point after a normal optional that doesn’t contain a value.

 You can check whether an implicitly unwrapped optional is `nil` the same way you check a normal optional:
*/
if assumedString != nil {
    print(assumedString!)
}
// Prints "An implicitly unwrapped optional string."
/*:
 You can also use an implicitly unwrapped optional with optional binding, to check and unwrap its value in a single statement:
*/
if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string."
/*:
 - NOTE: Don’t use an implicitly unwrapped optional when there’s a possibility of a variable becoming `nil` at a later point. Always use a normal optional type if you need to check for a `nil` value during the lifetime of a variable.
*/
//: [Error Handling ->](Error%20Handling)
